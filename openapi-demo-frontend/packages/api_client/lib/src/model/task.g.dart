// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Task extends Task {
  @override
  final num id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final bool completed;
  @override
  final num order;
  @override
  final num todoId;
  @override
  final Todo todo;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  factory _$Task([void Function(TaskBuilder)? updates]) =>
      (TaskBuilder()..update(updates))._build();

  _$Task._(
      {required this.id,
      required this.title,
      this.description,
      required this.completed,
      required this.order,
      required this.todoId,
      required this.todo,
      required this.createdAt,
      required this.updatedAt})
      : super._();
  @override
  Task rebuild(void Function(TaskBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TaskBuilder toBuilder() => TaskBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Task &&
        id == other.id &&
        title == other.title &&
        description == other.description &&
        completed == other.completed &&
        order == other.order &&
        todoId == other.todoId &&
        todo == other.todo &&
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
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, todoId.hashCode);
    _$hash = $jc(_$hash, todo.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Task')
          ..add('id', id)
          ..add('title', title)
          ..add('description', description)
          ..add('completed', completed)
          ..add('order', order)
          ..add('todoId', todoId)
          ..add('todo', todo)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class TaskBuilder implements Builder<Task, TaskBuilder> {
  _$Task? _$v;

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

  num? _order;
  num? get order => _$this._order;
  set order(num? order) => _$this._order = order;

  num? _todoId;
  num? get todoId => _$this._todoId;
  set todoId(num? todoId) => _$this._todoId = todoId;

  TodoBuilder? _todo;
  TodoBuilder get todo => _$this._todo ??= TodoBuilder();
  set todo(TodoBuilder? todo) => _$this._todo = todo;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  TaskBuilder() {
    Task._defaults(this);
  }

  TaskBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _description = $v.description;
      _completed = $v.completed;
      _order = $v.order;
      _todoId = $v.todoId;
      _todo = $v.todo.toBuilder();
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Task other) {
    _$v = other as _$Task;
  }

  @override
  void update(void Function(TaskBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Task build() => _build();

  _$Task _build() {
    _$Task _$result;
    try {
      _$result = _$v ??
          _$Task._(
            id: BuiltValueNullFieldError.checkNotNull(id, r'Task', 'id'),
            title:
                BuiltValueNullFieldError.checkNotNull(title, r'Task', 'title'),
            description: description,
            completed: BuiltValueNullFieldError.checkNotNull(
                completed, r'Task', 'completed'),
            order:
                BuiltValueNullFieldError.checkNotNull(order, r'Task', 'order'),
            todoId: BuiltValueNullFieldError.checkNotNull(
                todoId, r'Task', 'todoId'),
            todo: todo.build(),
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'Task', 'createdAt'),
            updatedAt: BuiltValueNullFieldError.checkNotNull(
                updatedAt, r'Task', 'updatedAt'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'todo';
        todo.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'Task', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
