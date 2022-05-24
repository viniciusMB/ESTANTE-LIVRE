import { CreateBookDto } from '../dto/create-book.dto';
import { Book } from '../interfaces/book.interface';

export const bookDateFormat = (createBookDto: CreateBookDto) => {
  const { releaseDate, ...bookDto } = createBookDto;
  const createBookDtoFormated: Book = bookDto;
  createBookDtoFormated.releaseDate = new Date(releaseDate);
  return createBookDtoFormated;
};
