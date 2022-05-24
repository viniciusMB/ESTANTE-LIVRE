import { Injectable } from '@nestjs/common';

import { User } from '../schemas/user.interface';

import { AuthService } from 'src/auth/services/auth.service';
import { Model } from 'mongoose';
import { InjectModel } from '@nestjs/mongoose';

@Injectable()
export class UserService {
  constructor(
    @InjectModel('User') private readonly userModel: Model<User>,
    private authService: AuthService,
  ) {}

  async create(user: User) {
    const passwordHash = this.authService.hashPassword(user.password);
    const newUser = new this.userModel();
    newUser.name = user.name;
    newUser.email = user.email;
    newUser.password = await passwordHash;
    newUser.save();
    const { password, ...result } = user;
    return result;
  }

  async findOne(id: number) {
    const user = await this.userModel.findById({ _id: id });

    const { password, ...result } = user;
    return result;
  }

  deleteOne(id: number) {
    return this.userModel.remove({ _id: id });
  }

  async login(user: User): Promise<string> {
    const uservalidated = await this.validateUser(user.email, user.password);
    if (uservalidated) {
      return this.authService.generateJWT(user);
    } else {
      return 'Wrong Credentials';
    }
  }

  async validateUser(email: string, password: string) {
    const user = await this.userModel.findOne({ email });
    return this.authService.comparePasswords(password, user.password);
  }

  findByMail(email: string) {
    return this.userModel.findOne({ email });
  }
}
