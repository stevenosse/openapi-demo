import 'package:api_client/api_client.dart';
import 'package:flutter/material.dart';
import 'package:openapi_demo_frontend/src/datasource/repositories/todo_repository.dart';
import 'package:openapi_demo_frontend/src/shared/components/app_snackbar.dart';
import 'package:openapi_demo_frontend/src/shared/locator.dart';

class TodoController extends ChangeNotifier {
  final TodoRepository _todoRepository;

  TodoController({TodoRepository? todoRepository})
      : _todoRepository = todoRepository ?? locator<TodoRepository>();

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Iterable<Todo>? _todos;
  Iterable<Todo>? get todos => _todos;

  String? _error;
  String? get error => _error;

  /// Load all todos
  Future<void> loadTodos() async {
    _setLoading(true);
    _error = null;

    final response = await _todoRepository.getAllTodos();

    response.when(
      success: (data) {
        _todos = data;
        _error = null;
      },
      error: (error) {
        _error = 'Failed to load todos: ${error.statusCode}';
      },
    );

    _setLoading(false);
  }

  /// Create a new todo
  Future<bool> createTodo(
      String title, String? description, String priority) async {
    _setLoading(true);

    // Convert priority string to enum
    final CreateTodoDtoPriorityEnum priorityEnum;
    switch (priority.toLowerCase()) {
      case 'high':
        priorityEnum = CreateTodoDtoPriorityEnum.high;
        break;
      case 'low':
        priorityEnum = CreateTodoDtoPriorityEnum.low;
        break;
      case 'medium':
      default:
        priorityEnum = CreateTodoDtoPriorityEnum.medium;
        break;
    }

    // Create the DTO
    final todoDto = CreateTodoDto((b) => b
      ..title = title
      ..description = description
      ..priority = priorityEnum);

    final response = await _todoRepository.createTodo(todoDto);

    bool success = false;
    response.when(
      success: (data) {
        // If we already have todos loaded, add the new one to the list
        if (_todos != null) {
          _todos = _todos!.toList()..add(data);
        }
        success = true;
      },
      error: (error) {
        _error = 'Failed to create todo: ${error.statusCode}';
        success = false;
      },
    );

    _setLoading(false);
    return success;
  }

  /// Update a todo's completion status
  Future<bool> toggleTodoCompletion(Todo todo) async {
    _setLoading(true);

    final todoDto = UpdateTodoDto((b) => b..completed = !todo.completed);

    final response = await _todoRepository.updateTodo(todo.id, todoDto);

    bool success = false;
    response.when(
      success: (updatedTodo) {
        // Update the todo in the list
        if (_todos != null) {
          final index = _todos!.toList().indexWhere((t) => t.id == todo.id);
          if (index != -1) {
            _todos = _todos!.toList()..[index] = updatedTodo;
          }
        }
        success = true;
      },
      error: (error) {
        _error = 'Failed to update todo: ${error.statusCode}';
        success = false;
      },
    );

    _setLoading(false);
    return success;
  }

  /// Delete a todo
  Future<bool> deleteTodo(Todo todo) async {
    _setLoading(true);

    final response = await _todoRepository.deleteTodo(todo.id);

    bool success = false;
    response.when(
      success: (_) {
        // Remove the todo from the list
        if (_todos != null) {
          _todos = _todos!.toList()..removeWhere((t) => t.id == todo.id);
        }
        success = true;
      },
      error: (error) {
        _error = 'Failed to delete todo: ${error.statusCode}';
        success = false;
      },
    );

    _setLoading(false);
    return success;
  }

  /// Helper method to set loading state
  void _setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  /// Show error in snackbar if there is one
  void showErrorIfExists(BuildContext context) {
    if (_error != null) {
      AppSnackbar.showError(context, _error!);
      _error = null;
      notifyListeners();
    }
  }
}
