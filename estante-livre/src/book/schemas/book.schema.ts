import * as mongoose from 'mongoose';

export const BookSchema = new mongoose.Schema({
  title: { type: String, required: true },
  author: String,
  description: String,
  releaseDate: Date,
  ownerId: { type: String, required: true },
  bookImage: String,
  status: { type: String, required: true },
});
