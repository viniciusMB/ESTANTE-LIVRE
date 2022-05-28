export class CreateBookDto {
  title: string;
  author: string;
  ownerId: string;
  description: string;
  releaseDate?: any;
  bookImage?: string;
  status: string;
}
