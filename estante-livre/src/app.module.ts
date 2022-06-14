import { Module } from '@nestjs/common';
import { AppController } from './app.controller';
import { AppService } from './app.service';
import { MongooseModule } from '@nestjs/mongoose';
import { ConfigModule } from '@nestjs/config';
import { ServeStaticModule } from '@nestjs/serve-static';
import { join } from 'path';
import { BookSchema } from './book/schemas/book.schema';
import { UserSchema } from './user/schemas/user.shcema';
import { MailModule } from './mail/mail.module';
import { BookController } from './book/book.controller';
import { UserController } from './user/user.controller';
import { AuthModule } from './auth/auth.module';
import { UserModule } from './user/user.module';
import { BookModule } from './book/book.module';
import { User } from './user/schemas/user.shcema';

@Module({
  imports: [
    ServeStaticModule.forRoot({
      rootPath: join(__dirname, '..', 'public'),
    }),
    ConfigModule.forRoot(),
    MongooseModule.forRoot(process.env.MONGO_URL),
    MongooseModule.forFeature([
      {
        name: 'Book',
        schema: BookSchema,
      },
      { name: User.name, schema: UserSchema },
    ]),

    AuthModule,
    UserModule,
    BookModule,
    MailModule,
    ConfigModule,
  ],
  controllers: [UserController, BookController],
  providers: [],
})
export class AppModule {}
