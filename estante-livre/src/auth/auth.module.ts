import { Module } from '@nestjs/common';
import { JwtModule } from '@nestjs/jwt';
import { ConfigModule, ConfigService } from '@nestjs/config';
import { AuthService } from './services/auth.service';
import { JwtAuthGuard } from './guards/jwt.guards';
import { JwtStrategy } from './guards/jwt-strategy';

@Module({
  imports: [
    JwtModule.registerAsync({
      imports: [ConfigModule],
      inject: [ConfigService],
      useFactory: async (configService: ConfigService) => ({
        secret: configService.get('JWT_SECRET'),
        signOptions: { expiresIn: '10000s' },
      }),
    }),
    ConfigModule,
  ],
  providers: [AuthService, JwtAuthGuard, JwtStrategy],
  exports: [AuthService, JwtAuthGuard, JwtStrategy],
})
export class AuthModule {}
