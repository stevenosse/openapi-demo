import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateTodoDto } from './dto/create-todo.dto';
import { UpdateTodoDto } from './dto/update-todo.dto';
import { Todo } from './entities/todo.entity';
import { TodoMapper } from './mappers/todo.mapper';

@Injectable()
export class TodoService {
  constructor(
    @InjectRepository(Todo)
    private todoRepository: Repository<Todo>,
  ) {}

  /**
   * Create a new todo
   * @param createTodoDto The data for the new todo
   * @returns The created todo
   */
  async create(createTodoDto: CreateTodoDto): Promise<Todo> {
    const todo = this.todoRepository.create({
      title: createTodoDto.title,
      description: createTodoDto.description,
      priority: createTodoDto.priority || 'medium',
      completed: false,
    });
    
    return this.todoRepository.save(todo);
  }

  /**
   * Get all todos
   * @returns Array of all todos
   */
  async findAll(): Promise<Todo[]> {
    return this.todoRepository.find({
      relations: ['tasks'],
      order: {
        createdAt: 'DESC',
        tasks: {
          order: 'ASC',
          createdAt: 'ASC'
        }
      }
    });
  }

  /**
   * Get a todo by ID
   * @param id The ID of the todo to find
   * @returns The found todo
   * @throws NotFoundException if todo is not found
   */
  async findOne(id: number): Promise<Todo> {
    const todo = await this.todoRepository.findOne({ 
      where: { id },
      relations: ['tasks'],
      order: {
        tasks: {
          order: 'ASC',
          createdAt: 'ASC'
        }
      }
    });
    if (!todo) {
      throw new NotFoundException(`Todo with ID ${id} not found`);
    }
    return todo;
  }

  /**
   * Update a todo by ID
   * @param id The ID of the todo to update
   * @param updateTodoDto The data to update the todo with
   * @returns The updated todo
   * @throws NotFoundException if todo is not found
   */
  async update(id: number, updateTodoDto: UpdateTodoDto): Promise<Todo> {
    const todo = await this.findOne(id);
    
    // Update only the fields that are provided
    if (updateTodoDto.title !== undefined) {
      todo.title = updateTodoDto.title;
    }
    
    if (updateTodoDto.description !== undefined) {
      todo.description = updateTodoDto.description;
    }
    
    if (updateTodoDto.priority !== undefined) {
      todo.priority = updateTodoDto.priority;
    }
    
    if (updateTodoDto.completed !== undefined) {
      todo.completed = updateTodoDto.completed;
    }
    
    return this.todoRepository.save(todo);
  }

  /**
   * Remove a todo by ID
   * @param id The ID of the todo to remove
   * @returns The removed todo
   * @throws NotFoundException if todo is not found
   */
  async remove(id: number): Promise<void> {
    const todo = await this.findOne(id);
    await this.todoRepository.remove(todo);
  }
}