import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { Book } from './interfaces/book.interface';

@Injectable()
export class BookService {
  constructor(@InjectModel('Book') private readonly bookModel: Model<Book>) {}

  async create(book: Book) {
    const newBook = new this.bookModel(book);
    return newBook.save();
  }

  async findAll() {
    return this.bookModel.find();
  }

  async findOne(id: number) {
    return this.bookModel.findById({ _id: id });
  }

  async remove(id: number) {
    return this.bookModel.remove({ _id: id });
  }
}
