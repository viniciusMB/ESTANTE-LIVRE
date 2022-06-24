import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { IUser } from '../../user/schemas/user.interface';
import bcrypt from 'bcrypt';
import { CreateUserDto } from 'src/user/dto/create-user.dto';

@Injectable()
export class AuthService {
  constructor(private readonly jwtService: JwtService) {}

  async generateJWT(user: CreateUserDto) {
    return this.jwtService.signAsync({ user });
  }

  async hashPassword(password: string) {
    return bcrypt.hash(password, 12);
  }

  async comparePasswords(newPassword: string, passwortHash: string) {
    return bcrypt.compare(newPassword, passwortHash);
  }
}
