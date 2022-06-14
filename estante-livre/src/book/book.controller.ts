import {
  Controller,
  Get,
  Post,
  Body,
  Param,
  Delete,
  UseInterceptors,
  UploadedFile,
  HttpException,
} from '@nestjs/common';
import { FileInterceptor } from '@nestjs/platform-express';

import { BookService } from './book.service';

import { CreateBookDto } from './dto/create-book.dto';
import { ReserveBookDto } from './dto/reserve-book.dto';

import { storage } from './helpers/image-storage.helper';
import { bookDateFormat } from './helpers/book-date.format.helper';
import { UserService } from 'src/user/services/user.service';
import { MailService } from 'src/mail/mail.service';
import { ApiBody } from '@nestjs/swagger';

@Controller('book')
export class BookController {
  constructor(
    private readonly bookService: BookService,
    private readonly userService: UserService,
    private readonly mailService: MailService,
  ) {}

  @ApiBody({
    type: CreateBookDto,
    description:
      'Essa request deve ser feita atraves de um formdata, com a imagem do livro no campo file e as propriedades do body anexadas',
  })
  @Post('create')
  @UseInterceptors(FileInterceptor('file', storage))
  async create(
    @UploadedFile() file: Express.Multer.File,
    @Body() createBookDto: CreateBookDto,
  ) {
    const book = bookDateFormat(createBookDto);
    book.bookImage = `${process.env.API_URL}${file.path}`;
    return this.bookService.create(book);
  }

  @Get()
  findAll() {
    return this.bookService.findAll();
  }

  @Get(':id')
  findOne(@Param('id') id: string) {
    return this.bookService.findOne(+id);
  }

  @Delete(':id')
  remove(@Param('id') id: string) {
    return this.bookService.remove(+id);
  }

  @ApiBody({
    type: ReserveBookDto,
  })
  @Post('reserveBook')
  async reserveBook(@Body() reserveBookDto: ReserveBookDto) {
    const { bookId, fromEmail } = reserveBookDto;
    const bookOnDb = await this.bookService.findOne(bookId);

    if (bookOnDb.status !== 'AVAILABLE') {
      throw new HttpException('Book Unavailable', 400);
    }

    const user = await this.userService.findOne(bookOnDb.ownerId);
    if (!user) throw new HttpException('User not found', 404);

    await this.bookService.updateStatus(bookId, 'RESERVED');
    await this.mailService.sendBookReservation(user, fromEmail, bookOnDb);
  }
}
