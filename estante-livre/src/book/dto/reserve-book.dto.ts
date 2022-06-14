import { ApiProperty } from '@nestjs/swagger';

export class ReserveBookDto {
  @ApiProperty()
  bookId: number;

  @ApiProperty()
  fromEmail: string;
}
