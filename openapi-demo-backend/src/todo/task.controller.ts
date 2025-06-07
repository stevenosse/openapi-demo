import {
  Controller,
  Get,
  Post,
  Body,
  Patch,
  Param,
  Delete,
  ParseIntPipe,
  HttpStatus,
  HttpCode,
} from '@nestjs/common';
import { TaskService } from './task.service';
import { CreateTaskDto } from './dto/create-task.dto';
import { UpdateTaskDto } from './dto/update-task.dto';
import { ApiCreatedResponse, ApiNoContentResponse, ApiNotFoundResponse, ApiOkResponse, ApiOperation, ApiParam, ApiTags } from '@nestjs/swagger';
import { Task } from './entities/task.entity';

@ApiTags('tasks')
@Controller('todos/:todoId/tasks')
export class TaskController {
  constructor(private readonly taskService: TaskService) {}

  @Post()
  @ApiOperation({ summary: 'Create a new task for a todo', operationId: 'createTask' })
  @ApiParam({ name: 'todoId', description: 'Todo ID', type: 'number' })
  @ApiCreatedResponse({
    description: 'The task has been successfully created.',
    type: Task,
  })
  @ApiNotFoundResponse({ description: 'Todo not found' })
  async create(
    @Param('todoId', ParseIntPipe) todoId: number,
    @Body() createTaskDto: CreateTaskDto,
  ): Promise<Task> {
    return this.taskService.create(todoId, createTaskDto);
  }

  @Get()
  @ApiOperation({ summary: 'Get all tasks for a todo', operationId: 'getAllTasksForTodo' })
  @ApiParam({ name: 'todoId', description: 'Todo ID', type: 'number' })
  @ApiOkResponse({
    description: 'List of all tasks for the specified todo',
    type: [Task],
  })
  @ApiNotFoundResponse({ description: 'Todo not found' })
  async findAll(@Param('todoId', ParseIntPipe) todoId: number): Promise<Task[]> {
    return this.taskService.findAllByTodo(todoId);
  }

  @Get(':id')
  @ApiOperation({ summary: 'Get a task by ID', operationId: 'getTaskById' })
  @ApiParam({ name: 'todoId', description: 'Todo ID', type: 'number' })
  @ApiParam({ name: 'id', description: 'Task ID', type: 'number' })
  @ApiOkResponse({
    description: 'The task with the specified ID',
    type: Task,
  })
  @ApiNotFoundResponse({ description: 'Todo or task not found' })
  async findOne(
    @Param('todoId', ParseIntPipe) todoId: number,
    @Param('id', ParseIntPipe) id: number,
  ): Promise<Task> {
    return this.taskService.findOne(todoId, id);
  }

  @Patch(':id')
  @ApiOperation({ summary: 'Update a task by ID', operationId: 'updateTaskById' })
  @ApiParam({ name: 'todoId', description: 'Todo ID', type: 'number' })
  @ApiParam({ name: 'id', description: 'Task ID', type: 'number' })
  @ApiOkResponse({
    description: 'The task has been successfully updated.',
    type: Task,
  })
  @ApiNotFoundResponse({ description: 'Todo or task not found' })
  async update(
    @Param('todoId', ParseIntPipe) todoId: number,
    @Param('id', ParseIntPipe) id: number,
    @Body() updateTaskDto: UpdateTaskDto,
  ): Promise<Task> {
    return this.taskService.update(todoId, id, updateTaskDto);
  }

  @Delete(':id')
  @HttpCode(HttpStatus.NO_CONTENT)
  @ApiOperation({ summary: 'Delete a task by ID', operationId: 'deleteTaskById' })
  @ApiParam({ name: 'todoId', description: 'Todo ID', type: 'number' })
  @ApiParam({ name: 'id', description: 'Task ID', type: 'number' })
  @ApiNoContentResponse({ description: 'The task has been successfully deleted.' })
  @ApiNotFoundResponse({ description: 'Todo or task not found' })
  async remove(
    @Param('todoId', ParseIntPipe) todoId: number,
    @Param('id', ParseIntPipe) id: number,
  ): Promise<void> {
    await this.taskService.remove(todoId, id);
  }
}