import 'package:api_client/api_client.dart';
import 'package:openapi_demo_frontend/src/datasource/http/dio_config.dart';
import 'package:openapi_demo_frontend/src/datasource/models/api_response/api_response.dart';
import 'package:openapi_demo_frontend/src/datasource/repositories/base_repository.dart';
import 'package:openapi_demo_frontend/src/shared/locator.dart';

class TodoRepository extends BaseRepository {
  final TodosApi todosApi;

  TodoRepository({TodosApi? todosApi})
      : todosApi = todosApi ?? TodosApi(locator<DioConfig>().dio, standardSerializers);

  /// Get all todos
  Future<ApiResponse<Iterable<Todo>, ApiError>> getAllTodos() async {
    return runApiCall(
      call: () async {
        final response = await todosApi.getAllTodos();
        return ApiResponse.success(response.data!);
      },
    );
  }

  /// Get a todo by id
  Future<ApiResponse<Todo, ApiError>> getTodoById(num id) async {
    return runApiCall(
      call: () async {
        final response = await todosApi.getTodoById(id: id);
        return ApiResponse.success(response.data!);
      },
    );
  }

  /// Create a new todo
  Future<ApiResponse<Todo, ApiError>> createTodo(CreateTodoDto todoDto) async {
    return runApiCall(
      call: () async {
        final response = await todosApi.createTodo(createTodoDto: todoDto);
        return ApiResponse.success(response.data!);
      },
    );
  }

  /// Update a todo
  Future<ApiResponse<Todo, ApiError>> updateTodo(num id, UpdateTodoDto todoDto) async {
    return runApiCall(
      call: () async {
        final response = await todosApi.updateTodoById(
          id: id,
          updateTodoDto: todoDto,
        );
        return ApiResponse.success(response.data!);
      },
    );
  }

  /// Delete a todo
  Future<ApiResponse<void, ApiError>> deleteTodo(num id) async {
    return runApiCall(
      call: () async {
        await todosApi.deleteTodoById(id: id);
        return ApiResponse.success(null);
      },
    );
  }
}