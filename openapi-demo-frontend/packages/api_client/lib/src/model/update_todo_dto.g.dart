// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_todo_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTodoDto extends UpdateTodoDto {
  @override
  final bool? completed;

  factory _$UpdateTodoDto([void Function(UpdateTodoDtoBuilder)? updates]) =>
      (UpdateTodoDtoBuilder()..update(updates))._build();

  _$UpdateTodoDto._({this.completed}) : super._();
  @override
  UpdateTodoDto rebuild(void Function(UpdateTodoDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTodoDtoBuilder toBuilder() => UpdateTodoDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTodoDto && completed == other.completed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTodoDto')
          ..add('completed', completed))
        .toString();
  }
}

class UpdateTodoDtoBuilder
    implements Builder<UpdateTodoDto, UpdateTodoDtoBuilder> {
  _$UpdateTodoDto? _$v;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  UpdateTodoDtoBuilder() {
    UpdateTodoDto._defaults(this);
  }

  UpdateTodoDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _completed = $v.completed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTodoDto other) {
    _$v = other as _$UpdateTodoDto;
  }

  @override
  void update(void Function(UpdateTodoDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTodoDto build() => _build();

  _$UpdateTodoDto _build() {
    final _$result = _$v ??
        _$UpdateTodoDto._(
          completed: completed,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
