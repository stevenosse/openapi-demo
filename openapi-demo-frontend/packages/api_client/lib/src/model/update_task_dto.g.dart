// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_task_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UpdateTaskDto extends UpdateTaskDto {
  @override
  final String? title;
  @override
  final String? description;
  @override
  final num? order;
  @override
  final bool? completed;

  factory _$UpdateTaskDto([void Function(UpdateTaskDtoBuilder)? updates]) =>
      (UpdateTaskDtoBuilder()..update(updates))._build();

  _$UpdateTaskDto._({this.title, this.description, this.order, this.completed})
      : super._();
  @override
  UpdateTaskDto rebuild(void Function(UpdateTaskDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UpdateTaskDtoBuilder toBuilder() => UpdateTaskDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UpdateTaskDto &&
        title == other.title &&
        description == other.description &&
        order == other.order &&
        completed == other.completed;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UpdateTaskDto')
          ..add('title', title)
          ..add('description', description)
          ..add('order', order)
          ..add('completed', completed))
        .toString();
  }
}

class UpdateTaskDtoBuilder
    implements Builder<UpdateTaskDto, UpdateTaskDtoBuilder> {
  _$UpdateTaskDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _order;
  num? get order => _$this._order;
  set order(num? order) => _$this._order = order;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  UpdateTaskDtoBuilder() {
    UpdateTaskDto._defaults(this);
  }

  UpdateTaskDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _order = $v.order;
      _completed = $v.completed;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UpdateTaskDto other) {
    _$v = other as _$UpdateTaskDto;
  }

  @override
  void update(void Function(UpdateTaskDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UpdateTaskDto build() => _build();

  _$UpdateTaskDto _build() {
    final _$result = _$v ??
        _$UpdateTaskDto._(
          title: title,
          description: description,
          order: order,
          completed: completed,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
