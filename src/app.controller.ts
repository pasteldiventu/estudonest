import { Controller, Get } from '@nestjs/common';
import { PrismaService } from './database/prisma.service';

@Controller('app')
export class AppController {
  constructor (
    private prisma: PrismaService,
  ) {}

  @Get('hello')
  async getHello(){
    const member = await this.prisma.artilheiroBrasileiro.create({
      data: {
        id:   '1',
        name: 'Dinamite',
        team: 'Vasco da Gama',
      },
    });

    return{
      member,
    };
  }
}
