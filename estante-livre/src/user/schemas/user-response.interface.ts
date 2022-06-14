import { Document } from 'mongoose';
export interface IUserResponse extends Document {
  name: string;
  email: string;
}
