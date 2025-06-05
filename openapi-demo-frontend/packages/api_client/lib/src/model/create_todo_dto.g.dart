// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_todo_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CreateTodoDtoPriorityEnum _$createTodoDtoPriorityEnum_low =
    const CreateTodoDtoPriorityEnum._('low');
const CreateTodoDtoPriorityEnum _$createTodoDtoPriorityEnum_medium =
    const CreateTodoDtoPriorityEnum._('medium');
const CreateTodoDtoPriorityEnum _$createTodoDtoPriorityEnum_high =
    const CreateTodoDtoPriorityEnum._('high');

CreateTodoDtoPriorityEnum _$createTodoDtoPriorityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$createTodoDtoPriorityEnum_low;
    case 'medium':
      return _$createTodoDtoPriorityEnum_medium;
    case 'high':
      return _$createTodoDtoPriorityEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<CreateTodoDtoPriorityEnum> _$createTodoDtoPriorityEnumValues =
    BuiltSet<CreateTodoDtoPriorityEnum>(const <CreateTodoDtoPriorityEnum>[
  _$createTodoDtoPriorityEnum_low,
  _$createTodoDtoPriorityEnum_medium,
  _$createTodoDtoPriorityEnum_high,
]);

Serializer<CreateTodoDtoPriorityEnum> _$createTodoDtoPriorityEnumSerializer =
    _$CreateTodoDtoPriorityEnumSerializer();

class _$CreateTodoDtoPriorityEnumSerializer
    implements PrimitiveSerializer<CreateTodoDtoPriorityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'low': 'low',
    'medium': 'medium',
    'high': 'high',
  };

  @override
  final Iterable<Type> types = const <Type>[CreateTodoDtoPriorityEnum];
  @override
  final String wireName = 'CreateTodoDtoPriorityEnum';

  @override
  Object serialize(Serializers serializers, CreateTodoDtoPriorityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CreateTodoDtoPriorityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CreateTodoDtoPriorityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$CreateTodoDto extends CreateTodoDto {
  @override
  final String title;
  @override
  final String? description;
  @override
  final CreateTodoDtoPriorityEnum priority;

  factory _$CreateTodoDto([void Function(CreateTodoDtoBuilder)? updates]) =>
      (CreateTodoDtoBuilder()..update(updates))._build();

  _$CreateTodoDto._(
      {required this.title, this.description, required this.priority})
      : super._();
  @override
  CreateTodoDto rebuild(void Function(CreateTodoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTodoDtoBuilder toBuilder() => CreateTodoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTodoDto &&
        title == other.title &&
        description == other.description &&
        priority == other.priority;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTodoDto')
          ..add('title', title)
          ..add('description', description)
          ..add('priority', priority))
        .toString();
  }
}

class CreateTodoDtoBuilder
    implements Builder<CreateTodoDto, CreateTodoDtoBuilder> {
  _$CreateTodoDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  CreateTodoDtoPriorityEnum? _priority;
  CreateTodoDtoPriorityEnum? get priority => _$this._priority;
  set priority(CreateTodoDtoPriorityEnum? priority) =>
      _$this._priority = priority;

  CreateTodoDtoBuilder() {
    CreateTodoDto._defaults(this);
  }

  CreateTodoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _priority = $v.priority;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTodoDto other) {
    _$v = other as _$CreateTodoDto;
  }

  @override
  void update(void Function(CreateTodoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTodoDto build() => _build();

  _$CreateTodoDto _build() {
    final _$result = _$v ??
        _$CreateTodoDto._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'CreateTodoDto', 'title'),
          description: description,
          priority: BuiltValueNullFieldError.checkNotNull(
              priority, r'CreateTodoDto', 'priority'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
