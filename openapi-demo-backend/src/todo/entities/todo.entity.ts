import { ApiProperty } from '@nestjs/swagger';
import { Entity, PrimaryGeneratedColumn, Column, CreateDateColumn, UpdateDateColumn } from 'typeorm';

@Entity('todos')
export class Todo {
  @ApiProperty({
    description: 'The unique identifier of the todo',
    example: 1,
  })
  @PrimaryGeneratedColumn()
  id: number;

  @ApiProperty({
    description: 'The title of the todo',
    example: 'Buy groceries',
  })
  @Column({ length: 100 })
  title: string;

  @ApiProperty({
    description: 'The description of the todo',
    example: 'Buy milk, bread, and eggs from the store',
    required: false,
  })
  @Column({ length: 500, nullable: true })
  description?: string;

  @ApiProperty({
    description: 'Whether the todo is completed',
    example: false,
    default: false,
  })
  @Column({ default: false })
  completed: boolean;

  @ApiProperty({
    description: 'The priority level of the todo',
    example: 'medium',
    enum: ['low', 'medium', 'high'],
    default: 'medium',
  })
  @Column({ type: 'varchar', default: 'medium' })
  priority: 'low' | 'medium' | 'high';

  @ApiProperty({
    description: 'The creation date of the todo',
    example: '2023-12-01T10:00:00Z',
  })
  @CreateDateColumn()
  createdAt: Date;

  @ApiProperty({
    description: 'The last update date of the todo',
    example: '2023-12-01T10:00:00Z',
  })
  @UpdateDateColumn()
  updatedAt: Date;
}