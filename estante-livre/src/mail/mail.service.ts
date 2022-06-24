import { MailerService } from '@nestjs-modules/mailer';
import { Injectable } from '@nestjs/common';
import { IBook } from 'src/book/interfaces/book.interface';
import { IUserResponse } from 'src/user/schemas/user-response.interface';

@Injectable()
export class MailService {
  constructor(private mailService: MailerService) {}

  async sendBookReservation(
    user: IUserResponse,
    fromEmail: string,
    book: IBook,
  ) {
    await this.mailService.sendMail({
      to: user.email,
      subject: 'Your book was reserved!',
      template: 'bookReserved',
      context: { user, book, fromEmail },
    });
  }
}
