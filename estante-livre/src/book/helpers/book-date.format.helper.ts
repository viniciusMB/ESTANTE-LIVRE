import { CreateBookDto } from '../dto/create-book.dto';

export const bookDateFormat = (createBookDto: CreateBookDto) => {
  const { releaseDate, ...bookDto } = createBookDto;
  const createBookDtoFormated: CreateBookDto = bookDto;
  createBookDtoFormated.releaseDate = new Date(releaseDate);
  return createBookDtoFormated;
};
