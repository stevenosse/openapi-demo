import 'package:test/test.dart';
import 'package:api_client/api_client.dart';


/// tests for TasksApi
void main() {
  final instance = ApiClient().getTasksApi();

  group(TasksApi, () {
    // Create a new task for a todo
    //
    //Future<Task> createTask(num todoId, CreateTaskDto createTaskDto) async
    test('test createTask', () async {
      // TODO
    });

    // Delete a task by ID
    //
    //Future deleteTaskById(num todoId, num id) async
    test('test deleteTaskById', () async {
      // TODO
    });

    // Get all tasks for a todo
    //
    //Future<BuiltList<Task>> getAllTasksForTodo(num todoId) async
    test('test getAllTasksForTodo', () async {
      // TODO
    });

    // Get a task by ID
    //
    //Future<Task> getTaskById(num todoId, num id) async
    test('test getTaskById', () async {
      // TODO
    });

    // Update a task by ID
    //
    //Future<Task> updateTaskById(num todoId, num id, UpdateTaskDto updateTaskDto) async
    test('test updateTaskById', () async {
      // TODO
    });

  });
}
