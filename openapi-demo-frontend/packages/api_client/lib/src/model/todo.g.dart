// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TodoPriorityEnum _$todoPriorityEnum_low = const TodoPriorityEnum._('low');
const TodoPriorityEnum _$todoPriorityEnum_medium =
    const TodoPriorityEnum._('medium');
const TodoPriorityEnum _$todoPriorityEnum_high =
    const TodoPriorityEnum._('high');

TodoPriorityEnum _$todoPriorityEnumValueOf(String name) {
  switch (name) {
    case 'low':
      return _$todoPriorityEnum_low;
    case 'medium':
      return _$todoPriorityEnum_medium;
    case 'high':
      return _$todoPriorityEnum_high;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<TodoPriorityEnum> _$todoPriorityEnumValues =
    BuiltSet<TodoPriorityEnum>(const <TodoPriorityEnum>[
  _$todoPriorityEnum_low,
  _$todoPriorityEnum_medium,
  _$todoPriorityEnum_high,
]);

Serializer<TodoPriorityEnum> _$todoPriorityEnumSerializer =
    _$TodoPriorityEnumSerializer();

class _$TodoPriorityEnumSerializer
    implements PrimitiveSerializer<TodoPriorityEnum> {
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
  final Iterable<Type> types = const <Type>[TodoPriorityEnum];
  @override
  final String wireName = 'TodoPriorityEnum';

  @override
  Object serialize(Serializers serializers, TodoPriorityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TodoPriorityEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TodoPriorityEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Todo extends Todo {
  @override
  final num id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final bool completed;
  @override
  final TodoPriorityEnum priority;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Todo([void Function(TodoBuilder)? updates]) =>
      (TodoBuilder()..update(updates))._build();

  _$Todo._(
      {required this.id,
      required this.title,
      this.description,
      required this.completed,
      required this.priority,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  Todo rebuild(void Function(TodoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TodoBuilder toBuilder() => TodoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Todo &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        completed == other.completed &&
        priority == other.priority &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, priority.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Todo')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('completed', completed)
          ..add('priority', priority)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TodoBuilder implements Builder<Todo, TodoBuilder> {
  _$Todo? _$v;

  num? _id;
  num? get id => _$this._id;
  set id(num? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  TodoPriorityEnum? _priority;
  TodoPriorityEnum? get priority => _$this._priority;
  set priority(TodoPriorityEnum? priority) => _$this._priority = priority;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TodoBuilder() {
    Todo._defaults(this);
  }

  TodoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _completed = $v.completed;
      _priority = $v.priority;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Todo other) {
    _$v = other as _$Todo;
  }

  @override
  void update(void Function(TodoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Todo build() => _build();

  _$Todo _build() {
    final _$result = _$v ??
        _$Todo._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Todo', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(title, r'Todo', 'title'),
          description: description,
          completed: BuiltValueNullFieldError.checkNotNull(
              completed, r'Todo', 'completed'),
          priority: BuiltValueNullFieldError.checkNotNull(
              priority, r'Todo', 'priority'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Todo', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'Todo', 'updatedAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
