import { Injectable } from '@nestjs/common';
import { InjectModel } from '@nestjs/mongoose';
import { Model } from 'mongoose';
import { CreateBookDto } from './dto/create-book.dto';
import { IBook } from './interfaces/book.interface';

@Injectable()
export class BookService {
  constructor(@InjectModel('Book') private readonly bookModel: Model<IBook>) {}

  async create(book: CreateBookDto): Promise<IBook> {
    const newBook = new this.bookModel(book);
    return newBook.save();
  }

  async findAll(): Promise<IBook[]> {
    return this.bookModel.find();
  }

  async findOne(id: number): Promise<IBook> {
    return this.bookModel.findById({ _id: id }).exec();
  }

  async remove(id: number): Promise<IBook> {
    return this.bookModel.remove({ _id: id });
  }

  async updateStatus(id: number, status: string) {
    return this.bookModel.updateOne({ _id: id }, { status });
  }
}
