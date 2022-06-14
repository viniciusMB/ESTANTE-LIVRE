import { Document } from 'mongoose';

export interface IBook extends Document {
  title: string;
  author?: string;
  status: string;
  description?: string;
  releaseDate?: Date;
  ownerId: number;
  location?: string;
  genre?: string;
  bookImage?: string;
}
