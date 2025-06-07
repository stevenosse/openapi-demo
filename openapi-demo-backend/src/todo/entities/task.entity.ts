import { ApiProperty } from '@nestjs/swagger';
import { Entity, PrimaryGeneratedColumn, Column, CreateDateColumn, UpdateDateColumn, ManyToOne, JoinColumn } from 'typeorm';
import { Todo } from './todo.entity';

@Entity('tasks')
export class Task {
  @ApiProperty({
    description: 'The unique identifier of the task',
    example: 1,
  })
  @PrimaryGeneratedColumn()
  id: number;

  @ApiProperty({
    description: 'The title of the task',
    example: 'Buy milk',
  })
  @Column({ length: 100 })
  title: string;

  @ApiProperty({
    description: 'The description of the task',
    example: 'Get 2% milk from the dairy section',
    required: false,
  })
  @Column({ length: 500, nullable: true })
  description?: string;

  @ApiProperty({
    description: 'Whether the task is completed',
    example: false,
    default: false,
  })
  @Column({ default: false })
  completed: boolean;

  @ApiProperty({
    description: 'The order/position of the task within the todo',
    example: 1,
    default: 0,
  })
  @Column({ default: 0 })
  order: number;

  @ApiProperty({
    description: 'The ID of the todo this task belongs to',
    example: 1,
  })
  @Column()
  todoId: number;

  @ApiProperty({
    description: 'The todo this task belongs to',
    type: () => Todo,
  })
  @ManyToOne(() => Todo, todo => todo.tasks, { onDelete: 'CASCADE' })
  @JoinColumn({ name: 'todoId' })
  todo: Todo;

  @ApiProperty({
    description: 'The creation date of the task',
    example: '2023-12-01T10:00:00Z',
  })
  @CreateDateColumn()
  createdAt: Date;

  @ApiProperty({
    description: 'The last update date of the task',
    example: '2023-12-01T10:30:00Z',
  })
  @UpdateDateColumn()
  updatedAt: Date;
}