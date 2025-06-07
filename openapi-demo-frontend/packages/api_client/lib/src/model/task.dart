//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:api_client/src/model/todo.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'task.g.dart';

/// Task
///
/// Properties:
/// * [id] - The unique identifier of the task
/// * [title] - The title of the task
/// * [description] - The description of the task
/// * [completed] - Whether the task is completed
/// * [order] - The order/position of the task within the todo
/// * [todoId] - The ID of the todo this task belongs to
/// * [todo] - The todo this task belongs to
/// * [createdAt] - The creation date of the task
/// * [updatedAt] - The last update date of the task
@BuiltValue()
abstract class Task implements Built<Task, TaskBuilder> {
  /// The unique identifier of the task
  @BuiltValueField(wireName: r'id')
  num get id;

  /// The title of the task
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The description of the task
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Whether the task is completed
  @BuiltValueField(wireName: r'completed')
  bool get completed;

  /// The order/position of the task within the todo
  @BuiltValueField(wireName: r'order')
  num get order;

  /// The ID of the todo this task belongs to
  @BuiltValueField(wireName: r'todoId')
  num get todoId;

  /// The todo this task belongs to
  @BuiltValueField(wireName: r'todo')
  Todo get todo;

  /// The creation date of the task
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// The last update date of the task
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  Task._();

  factory Task([void updates(TaskBuilder b)]) = _$Task;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TaskBuilder b) => b
      ..completed = false
      ..order = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<Task> get serializer => _$TaskSerializer();
}

class _$TaskSerializer implements PrimitiveSerializer<Task> {
  @override
  final Iterable<Type> types = const [Task, _$Task];

  @override
  final String wireName = r'Task';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Task object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(num),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    if (object.description != null) {
      yield r'description';
      yield serializers.serialize(
        object.description,
        specifiedType: const FullType(String),
      );
    }
    yield r'completed';
    yield serializers.serialize(
      object.completed,
      specifiedType: const FullType(bool),
    );
    yield r'order';
    yield serializers.serialize(
      object.order,
      specifiedType: const FullType(num),
    );
    yield r'todoId';
    yield serializers.serialize(
      object.todoId,
      specifiedType: const FullType(num),
    );
    yield r'todo';
    yield serializers.serialize(
      object.todo,
      specifiedType: const FullType(Todo),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updatedAt';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Task object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TaskBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.id = valueDes;
          break;
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'description':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.description = valueDes;
          break;
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.completed = valueDes;
          break;
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.order = valueDes;
          break;
        case r'todoId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.todoId = valueDes;
          break;
        case r'todo':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Todo),
          ) as Todo;
          result.todo.replace(valueDes);
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Task deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TaskBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

