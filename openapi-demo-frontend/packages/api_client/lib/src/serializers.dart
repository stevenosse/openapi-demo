//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:api_client/src/date_serializer.dart';
import 'package:api_client/src/model/date.dart';

import 'package:api_client/src/model/create_task_dto.dart';
import 'package:api_client/src/model/create_todo_dto.dart';
import 'package:api_client/src/model/task.dart';
import 'package:api_client/src/model/todo.dart';
import 'package:api_client/src/model/update_task_dto.dart';
import 'package:api_client/src/model/update_todo_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  CreateTaskDto,
  CreateTodoDto,
  Task,
  Todo,
  UpdateTaskDto,
  UpdateTodoDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Task)]),
        () => ListBuilder<Task>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Todo)]),
        () => ListBuilder<Todo>(),
      )
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer())
    ).build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
