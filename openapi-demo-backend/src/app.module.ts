import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';
import { TodoModule } from './todo/todo.module';
import { Todo } from './todo/entities/todo.entity';
import { Task } from './todo/entities/task.entity';
import { join } from 'path';

@Module({
  imports: [
    TypeOrmModule.forRoot({
      type: 'sqlite',
      database: join(process.cwd(), 'data', 'todos.sqlite'),
      entities: [Todo, Task],
      synchronize: true, // Auto-create database schema (only for development)
      autoLoadEntities: true,
    }),
    TodoModule,
  ],
})
export class AppModule {}
