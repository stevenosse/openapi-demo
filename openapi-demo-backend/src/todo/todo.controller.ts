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
import { TodoService } from './todo.service';
import { CreateTodoDto } from './dto/create-todo.dto';
import { UpdateTodoDto } from './dto/update-todo.dto';
import { ApiCreatedResponse, ApiNoContentResponse, ApiNotFoundResponse, ApiOkResponse, ApiOperation, ApiParam, ApiTags } from '@nestjs/swagger';
import { Todo } from './entities/todo.entity';

@ApiTags('todos')
@Controller('todos')
export class TodoController {
  constructor(private readonly todoService: TodoService) {}

  @Post()
  @ApiOperation({ summary: 'Create a new todo', operationId: 'createTodo' })
  @ApiCreatedResponse({
    description: 'The todo has been successfully created.',
    type: Todo,
  })
  async create(@Body() createTodoDto: CreateTodoDto): Promise<Todo> {
    return this.todoService.create(createTodoDto);
  }

  @Get()
  @ApiOperation({ summary: 'Get all todos', operationId: 'getAllTodos' })
  @ApiOkResponse({
    description: 'List of all todos',
    type: [Todo],
  })
  async findAll(): Promise<Todo[]> {
    return this.todoService.findAll();
  }

  @Get(':id')
  @ApiOperation({ summary: 'Get a todo by ID', operationId: 'getTodoById' })
  @ApiParam({ name: 'id', description: 'Todo ID', type: 'number' })
  @ApiOkResponse({
    description: 'The todo with the specified ID',
    type: Todo,
  })
  @ApiNotFoundResponse({ description: 'Todo not found' })
  async findOne(@Param('id', ParseIntPipe) id: number): Promise<Todo> {
    return this.todoService.findOne(id);
  }

  @Patch(':id')
  @ApiOperation({ summary: 'Update a todo by ID', operationId: 'updateTodoById' })
  @ApiParam({ name: 'id', description: 'Todo ID', type: 'number' })
  @ApiOkResponse({
    description: 'The todo has been successfully updated.',
    type: Todo,
  })
  @ApiNotFoundResponse({ description: 'Todo not found' })
  async update(
    @Param('id', ParseIntPipe) id: number,
    @Body() updateTodoDto: UpdateTodoDto,
  ): Promise<Todo> {
    return this.todoService.update(id, updateTodoDto);
  }

  @Delete(':id')
  @HttpCode(HttpStatus.NO_CONTENT)
  @ApiOperation({ summary: 'Delete a todo by ID', operationId: 'deleteTodoById' })
  @ApiParam({ name: 'id', description: 'Todo ID', type: 'number' })
  @ApiNoContentResponse({ description: 'The todo has been successfully deleted.' })
  @ApiNotFoundResponse({ description: 'Todo not found' })
  async remove(@Param('id', ParseIntPipe) id: number): Promise<void> {
    await this.todoService.remove(id);
  }
}