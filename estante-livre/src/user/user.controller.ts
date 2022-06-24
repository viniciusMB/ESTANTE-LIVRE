import {
  Controller,
  Post,
  Body,
  Get,
  Param,
  Delete,
  UseGuards,
} from '@nestjs/common';

import { UserService } from './services/user.service';
import { IUser } from './schemas/user.interface';
import { JwtAuthGuard } from '../auth/guards/jwt.guards';
import { CreateUserDto } from './dto/create-user.dto';

@Controller('users')
export class UserController {
  constructor(private userService: UserService) {}

  @Post()
  async create(@Body() user: CreateUserDto) {
    return this.userService.create(user);
  }

  @Post('login')
  async login(@Body() user: CreateUserDto) {
    return this.userService.login(user);
  }

  @UseGuards(JwtAuthGuard)
  @Get(':id')
  async findOne(@Param() params) {
    return this.userService.findOne(params.id);
  }

  @UseGuards(JwtAuthGuard)
  @Delete(':id')
  async deleteOne(@Param('id') id: string) {
    return this.userService.deleteOne(Number(id));
  }
}
