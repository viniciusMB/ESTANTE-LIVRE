import { Injectable } from '@nestjs/common';
import { JwtService } from '@nestjs/jwt';
import { Observable, from, of } from 'rxjs';
import { User } from '../../user/schemas/user.interface';
import bcrypt from 'bcrypt';

@Injectable()
export class AuthService {
  constructor(private readonly jwtService: JwtService) {}

  async generateJWT(user: User) {
    return this.jwtService.signAsync({ user });
  }

  async hashPassword(password: string) {
    return bcrypt.hash(password, 12);
  }

  async comparePasswords(newPassword: string, passwortHash: string) {
    return bcrypt.compare(newPassword, passwortHash);
  }
}
