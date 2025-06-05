//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'todo.g.dart';

/// Todo
///
/// Properties:
/// * [id] - The unique identifier of the todo
/// * [title] - The title of the todo
/// * [description] - The description of the todo
/// * [completed] - Whether the todo is completed
/// * [priority] - The priority level of the todo
/// * [createdAt] - The creation date of the todo
/// * [updatedAt] - The last update date of the todo
@BuiltValue()
abstract class Todo implements Built<Todo, TodoBuilder> {
  /// The unique identifier of the todo
  @BuiltValueField(wireName: r'id')
  num get id;

  /// The title of the todo
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The description of the todo
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// Whether the todo is completed
  @BuiltValueField(wireName: r'completed')
  bool get completed;

  /// The priority level of the todo
  @BuiltValueField(wireName: r'priority')
  TodoPriorityEnum get priority;
  // enum priorityEnum {  low,  medium,  high,  };

  /// The creation date of the todo
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// The last update date of the todo
  @BuiltValueField(wireName: r'updatedAt')
  DateTime get updatedAt;

  Todo._();

  factory Todo([void updates(TodoBuilder b)]) = _$Todo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TodoBuilder b) => b
      ..completed = false
      ..priority = const TodoPriorityEnum._('medium');

  @BuiltValueSerializer(custom: true)
  static Serializer<Todo> get serializer => _$TodoSerializer();
}

class _$TodoSerializer implements PrimitiveSerializer<Todo> {
  @override
  final Iterable<Type> types = const [Todo, _$Todo];

  @override
  final String wireName = r'Todo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Todo object, {
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
    yield r'priority';
    yield serializers.serialize(
      object.priority,
      specifiedType: const FullType(TodoPriorityEnum),
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
    Todo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required TodoBuilder result,
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
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TodoPriorityEnum),
          ) as TodoPriorityEnum;
          result.priority = valueDes;
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
  Todo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = TodoBuilder();
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

class TodoPriorityEnum extends EnumClass {

  /// The priority level of the todo
  @BuiltValueEnumConst(wireName: r'low')
  static const TodoPriorityEnum low = _$todoPriorityEnum_low;
  /// The priority level of the todo
  @BuiltValueEnumConst(wireName: r'medium')
  static const TodoPriorityEnum medium = _$todoPriorityEnum_medium;
  /// The priority level of the todo
  @BuiltValueEnumConst(wireName: r'high')
  static const TodoPriorityEnum high = _$todoPriorityEnum_high;

  static Serializer<TodoPriorityEnum> get serializer => _$todoPriorityEnumSerializer;

  const TodoPriorityEnum._(String name): super(name);

  static BuiltSet<TodoPriorityEnum> get values => _$todoPriorityEnumValues;
  static TodoPriorityEnum valueOf(String name) => _$todoPriorityEnumValueOf(name);
}

