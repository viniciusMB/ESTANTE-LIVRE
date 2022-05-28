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
import { reserveBookHelper } from './helpers/reserve-book.helper';
import { UserService } from 'src/user/services/user.service';

@Controller('book')
export class BookController {
  constructor(
    private readonly bookService: BookService,
    private readonly userService: UserService,
  ) {}

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

  @Post('reserveBook')
  async reserveBook(@Body() reserveBookDto: ReserveBookDto) {
    const bookOnDb = await this.bookService.findOne(reserveBookDto.id);
    if (bookOnDb.status !== 'AVAILABLE') {
      throw new HttpException('Book Unavailable', 400);
    }
    const user = await this.userService.findOne(bookOnDb.ownerId);

    if (!user) throw new HttpException('User not found', 404);

    await reserveBookHelper(bookOnDb, user);
    this.bookService;
  }
}
