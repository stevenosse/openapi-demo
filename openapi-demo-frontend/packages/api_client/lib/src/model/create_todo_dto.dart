//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_todo_dto.g.dart';

/// CreateTodoDto
///
/// Properties:
/// * [title] - The title of the todo
/// * [description] - The description of the todo
/// * [priority] - The priority level of the todo
@BuiltValue()
abstract class CreateTodoDto implements Built<CreateTodoDto, CreateTodoDtoBuilder> {
  /// The title of the todo
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The description of the todo
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The priority level of the todo
  @BuiltValueField(wireName: r'priority')
  CreateTodoDtoPriorityEnum get priority;
  // enum priorityEnum {  low,  medium,  high,  };

  CreateTodoDto._();

  factory CreateTodoDto([void updates(CreateTodoDtoBuilder b)]) = _$CreateTodoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTodoDtoBuilder b) => b
      ..priority = const CreateTodoDtoPriorityEnum._('medium');

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTodoDto> get serializer => _$CreateTodoDtoSerializer();
}

class _$CreateTodoDtoSerializer implements PrimitiveSerializer<CreateTodoDto> {
  @override
  final Iterable<Type> types = const [CreateTodoDto, _$CreateTodoDto];

  @override
  final String wireName = r'CreateTodoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTodoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    yield r'priority';
    yield serializers.serialize(
      object.priority,
      specifiedType: const FullType(CreateTodoDtoPriorityEnum),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTodoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTodoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'priority':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(CreateTodoDtoPriorityEnum),
          ) as CreateTodoDtoPriorityEnum;
          result.priority = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTodoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTodoDtoBuilder();
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

class CreateTodoDtoPriorityEnum extends EnumClass {

  /// The priority level of the todo
  @BuiltValueEnumConst(wireName: r'low')
  static const CreateTodoDtoPriorityEnum low = _$createTodoDtoPriorityEnum_low;
  /// The priority level of the todo
  @BuiltValueEnumConst(wireName: r'medium')
  static const CreateTodoDtoPriorityEnum medium = _$createTodoDtoPriorityEnum_medium;
  /// The priority level of the todo
  @BuiltValueEnumConst(wireName: r'high')
  static const CreateTodoDtoPriorityEnum high = _$createTodoDtoPriorityEnum_high;

  static Serializer<CreateTodoDtoPriorityEnum> get serializer => _$createTodoDtoPriorityEnumSerializer;

  const CreateTodoDtoPriorityEnum._(String name): super(name);

  static BuiltSet<CreateTodoDtoPriorityEnum> get values => _$createTodoDtoPriorityEnumValues;
  static CreateTodoDtoPriorityEnum valueOf(String name) => _$createTodoDtoPriorityEnumValueOf(name);
}

