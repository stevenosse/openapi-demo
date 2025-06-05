import { CreateTodoDto } from '../dto/create-todo.dto';
import { UpdateTodoDto } from '../dto/update-todo.dto';
import { Todo } from '../entities/todo.entity';

/**
 * Note: With TypeORM, we don't need most of these mapper functions anymore
 * as TypeORM handles entity creation and updates. This class is kept
 * for reference and potential future use with more complex mappings.
 */
export class TodoMapper {
  /**
   * Maps a CreateTodoDto to a Todo entity
   * @param dto The CreateTodoDto to map
   * @returns A new Todo entity
   */
  static toEntity(dto: CreateTodoDto): Partial<Todo> {
    return {
      title: dto.title,
      description: dto.description,
      priority: dto.priority || 'medium',
      completed: false,
    };
  }

  /**
   * Creates update data from UpdateTodoDto
   * @param dto The UpdateTodoDto with new values
   * @returns Partial Todo with updated fields
   */
  static toUpdateData(dto: UpdateTodoDto): Partial<Todo> {
    const updateData: Partial<Todo> = {};
    
    if (dto.title !== undefined) {
      updateData.title = dto.title;
    }
    
    if (dto.description !== undefined) {
      updateData.description = dto.description;
    }
    
    if (dto.priority !== undefined) {
      updateData.priority = dto.priority;
    }
    
    if (dto.completed !== undefined) {
      updateData.completed = dto.completed;
    }
    
    return updateData;
  }
}