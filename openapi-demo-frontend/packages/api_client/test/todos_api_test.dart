import 'package:test/test.dart';
import 'package:api_client/api_client.dart';


/// tests for TodosApi
void main() {
  final instance = ApiClient().getTodosApi();

  group(TodosApi, () {
    // Create a new todo
    //
    //Future<Todo> createTodo(CreateTodoDto createTodoDto) async
    test('test createTodo', () async {
      // TODO
    });

    // Delete a todo by ID
    //
    //Future deleteTodoById(num id) async
    test('test deleteTodoById', () async {
      // TODO
    });

    // Get all todos
    //
    //Future<BuiltList<Todo>> getAllTodos() async
    test('test getAllTodos', () async {
      // TODO
    });

    // Get a todo by ID
    //
    //Future<Todo> getTodoById(num id) async
    test('test getTodoById', () async {
      // TODO
    });

    // Update a todo by ID
    //
    //Future<Todo> updateTodoById(num id, UpdateTodoDto updateTodoDto) async
    test('test updateTodoById', () async {
      // TODO
    });

  });
}
