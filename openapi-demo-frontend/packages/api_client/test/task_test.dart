import 'package:test/test.dart';
import 'package:api_client/api_client.dart';

// tests for Task
void main() {
  final instance = TaskBuilder();
  // TODO add properties to the builder and call build()

  group(Task, () {
    // The unique identifier of the task
    // num id
    test('to test the property `id`', () async {
      // TODO
    });

    // The title of the task
    // String title
    test('to test the property `title`', () async {
      // TODO
    });

    // The description of the task
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Whether the task is completed
    // bool completed (default value: false)
    test('to test the property `completed`', () async {
      // TODO
    });

    // The order/position of the task within the todo
    // num order (default value: 0)
    test('to test the property `order`', () async {
      // TODO
    });

    // The ID of the todo this task belongs to
    // num todoId
    test('to test the property `todoId`', () async {
      // TODO
    });

    // The todo this task belongs to
    // Todo todo
    test('to test the property `todo`', () async {
      // TODO
    });

    // The creation date of the task
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // The last update date of the task
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

  });
}
