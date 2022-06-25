import { ApiProperty, ApiPropertyOptional } from '@nestjs/swagger';

export class CreateBookDto {
  @ApiProperty()
  author: string;

  @ApiProperty()
  ownerId: string;

  @ApiProperty()
  description: string;

  @ApiPropertyOptional()
  releaseDate?: any;

  @ApiPropertyOptional()
  bookImage?: string;

  @ApiPropertyOptional()
  location?: string;

  @ApiPropertyOptional()
  genre?: string;

  @ApiProperty()
  status: string;
}
