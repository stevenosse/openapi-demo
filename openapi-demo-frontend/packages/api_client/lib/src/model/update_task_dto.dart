//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_task_dto.g.dart';

/// UpdateTaskDto
///
/// Properties:
/// * [title] - The title of the task
/// * [description] - The description of the task
/// * [order] - The order/position of the task within the todo
/// * [completed] - Whether the task is completed
@BuiltValue()
abstract class UpdateTaskDto implements Built<UpdateTaskDto, UpdateTaskDtoBuilder> {
  /// The title of the task
  @BuiltValueField(wireName: r'title')
  String? get title;

  /// The description of the task
  @BuiltValueField(wireName: r'description')
  String? get description;

  /// The order/position of the task within the todo
  @BuiltValueField(wireName: r'order')
  num? get order;

  /// Whether the task is completed
  @BuiltValueField(wireName: r'completed')
  bool? get completed;

  UpdateTaskDto._();

  factory UpdateTaskDto([void updates(UpdateTaskDtoBuilder b)]) = _$UpdateTaskDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTaskDtoBuilder b) => b
      ..order = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTaskDto> get serializer => _$UpdateTaskDtoSerializer();
}

class _$UpdateTaskDtoSerializer implements PrimitiveSerializer<UpdateTaskDto> {
  @override
  final Iterable<Type> types = const [UpdateTaskDto, _$UpdateTaskDto];

  @override
  final String wireName = r'UpdateTaskDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTaskDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
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
    if (object.completed != null) {
      yield r'completed';
      yield serializers.serialize(
        object.completed,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UpdateTaskDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTaskDtoBuilder result,
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
        case r'completed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.completed = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UpdateTaskDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTaskDtoBuilder();
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

