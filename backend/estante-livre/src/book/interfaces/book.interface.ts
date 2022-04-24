export interface Book {
  title: string;
  author?: string;
  description?: string;
  releaseDate?: Date;
  ownerId: string;
  bookImage?: string;
}
