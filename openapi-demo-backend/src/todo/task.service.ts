import { Injectable, NotFoundException } from '@nestjs/common';
import { InjectRepository } from '@nestjs/typeorm';
import { Repository } from 'typeorm';
import { CreateTaskDto } from './dto/create-task.dto';
import { UpdateTaskDto } from './dto/update-task.dto';
import { Task } from './entities/task.entity';
import { Todo } from './entities/todo.entity';

@Injectable()
export class TaskService {
  constructor(
    @InjectRepository(Task)
    private taskRepository: Repository<Task>,
    @InjectRepository(Todo)
    private todoRepository: Repository<Todo>,
  ) {}

  /**
   * Create a new task for a specific todo
   * @param todoId The ID of the todo to create the task for
   * @param createTaskDto The data for the new task
   * @returns The created task
   * @throws NotFoundException if todo is not found
   */
  async create(todoId: number, createTaskDto: CreateTaskDto): Promise<Task> {
    // Verify that the todo exists
    const todo = await this.todoRepository.findOne({ where: { id: todoId } });
    if (!todo) {
      throw new NotFoundException(`Todo with ID ${todoId} not found`);
    }

    const task = this.taskRepository.create({
      title: createTaskDto.title,
      description: createTaskDto.description,
      order: createTaskDto.order || 0,
      completed: false,
      todoId: todoId,
    });
    
    return this.taskRepository.save(task);
  }

  /**
   * Get all tasks for a specific todo
   * @param todoId The ID of the todo to get tasks for
   * @returns Array of tasks for the specified todo
   * @throws NotFoundException if todo is not found
   */
  async findAllByTodo(todoId: number): Promise<Task[]> {
    // Verify that the todo exists
    const todo = await this.todoRepository.findOne({ where: { id: todoId } });
    if (!todo) {
      throw new NotFoundException(`Todo with ID ${todoId} not found`);
    }

    return this.taskRepository.find({ 
      where: { todoId },
      order: { order: 'ASC', createdAt: 'ASC' }
    });
  }

  /**
   * Get a specific task by ID
   * @param todoId The ID of the todo the task belongs to
   * @param taskId The ID of the task to find
   * @returns The found task
   * @throws NotFoundException if todo or task is not found
   */
  async findOne(todoId: number, taskId: number): Promise<Task> {
    // Verify that the todo exists
    const todo = await this.todoRepository.findOne({ where: { id: todoId } });
    if (!todo) {
      throw new NotFoundException(`Todo with ID ${todoId} not found`);
    }

    const task = await this.taskRepository.findOne({ 
      where: { id: taskId, todoId } 
    });
    if (!task) {
      throw new NotFoundException(`Task with ID ${taskId} not found in todo ${todoId}`);
    }
    return task;
  }

  /**
   * Update a task by ID
   * @param todoId The ID of the todo the task belongs to
   * @param taskId The ID of the task to update
   * @param updateTaskDto The data to update the task with
   * @returns The updated task
   * @throws NotFoundException if todo or task is not found
   */
  async update(todoId: number, taskId: number, updateTaskDto: UpdateTaskDto): Promise<Task> {
    const task = await this.findOne(todoId, taskId);
    
    // Update only the fields that are provided
    if (updateTaskDto.title !== undefined) {
      task.title = updateTaskDto.title;
    }
    
    if (updateTaskDto.description !== undefined) {
      task.description = updateTaskDto.description;
    }
    
    if (updateTaskDto.order !== undefined) {
      task.order = updateTaskDto.order;
    }
    
    if (updateTaskDto.completed !== undefined) {
      task.completed = updateTaskDto.completed;
    }
    
    return this.taskRepository.save(task);
  }

  /**
   * Remove a task by ID
   * @param todoId The ID of the todo the task belongs to
   * @param taskId The ID of the task to remove
   * @returns void
   * @throws NotFoundException if todo or task is not found
   */
  async remove(todoId: number, taskId: number): Promise<void> {
    const task = await this.findOne(todoId, taskId);
    await this.taskRepository.remove(task);
  }
}