//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'update_todo_dto.g.dart';

/// UpdateTodoDto
///
/// Properties:
/// * [completed] - Whether the todo is completed
@BuiltValue()
abstract class UpdateTodoDto implements Built<UpdateTodoDto, UpdateTodoDtoBuilder> {
  /// Whether the todo is completed
  @BuiltValueField(wireName: r'completed')
  bool? get completed;

  UpdateTodoDto._();

  factory UpdateTodoDto([void updates(UpdateTodoDtoBuilder b)]) = _$UpdateTodoDto;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UpdateTodoDtoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UpdateTodoDto> get serializer => _$UpdateTodoDtoSerializer();
}

class _$UpdateTodoDtoSerializer implements PrimitiveSerializer<UpdateTodoDto> {
  @override
  final Iterable<Type> types = const [UpdateTodoDto, _$UpdateTodoDto];

  @override
  final String wireName = r'UpdateTodoDto';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UpdateTodoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    UpdateTodoDto object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UpdateTodoDtoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
  UpdateTodoDto deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UpdateTodoDtoBuilder();
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

