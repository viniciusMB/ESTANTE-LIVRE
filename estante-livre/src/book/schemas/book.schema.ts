import { Prop, Schema, SchemaFactory } from '@nestjs/mongoose';

@Schema()
export class Book {
  @Prop({ required: true })
  title: string;

  @Prop()
  author: string;

  @Prop()
  description: string;

  @Prop()
  releaseDate: Date;

  @Prop({ required: true })
  status: string;

  @Prop()
  location: string;

  @Prop()
  genre: string;

  @Prop({ required: true })
  ownerId: number;

  @Prop()
  bookImage: string;
}

export const BookSchema = SchemaFactory.createForClass(Book);
