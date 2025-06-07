//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'create_task_dto.g.dart';

/// CreateTaskDto
///
/// Properties:
/// * [title] - The title of the task
/// * [description] - The description of the task
/// * [order] - The order/position of the task within the todo
@BuiltValue()
abstract class CreateTaskDto implements Built<CreateTaskDto, CreateTaskDtoBuilder> {
  /// The title of the task
  @BuiltValueField(wireName: r'title')
  String get title;

  /// The description of the task
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The order/position of the task within the todo
  @BuiltValueField(wireName: r'order')
  num? get order;

  CreateTaskDto._();

  factory CreateTaskDto([void updates(CreateTaskDtoBuilder b)]) = _$CreateTaskDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CreateTaskDtoBuilder b) => b
      ..order = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<CreateTaskDto> get serializer => _$CreateTaskDtoSerializer();
}

class _$CreateTaskDtoSerializer implements PrimitiveSerializer<CreateTaskDto> {
  @override
  final Iterable<Type> types = const [CreateTaskDto, _$CreateTaskDto];

  @override
  final String wireName = r'CreateTaskDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CreateTaskDto object, {
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
    if (object.order != null) {
      yield r'order';
      yield serializers.serialize(
        object.order,
        specifiedType: const FullType(num),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CreateTaskDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CreateTaskDtoBuilder result,
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
        case r'order':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.order = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CreateTaskDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CreateTaskDtoBuilder();
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

