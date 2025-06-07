// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_task_dto.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CreateTaskDto extends CreateTaskDto {
  @override
  final String title;
  @override
  final String? description;
  @override
  final num? order;

  factory _$CreateTaskDto([void Function(CreateTaskDtoBuilder)? updates]) =>
      (CreateTaskDtoBuilder()..update(updates))._build();

  _$CreateTaskDto._({required this.title, this.description, this.order})
      : super._();
  @override
  CreateTaskDto rebuild(void Function(CreateTaskDtoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreateTaskDtoBuilder toBuilder() => CreateTaskDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreateTaskDto &&
        title == other.title &&
        description == other.description &&
        order == other.order;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CreateTaskDto')
          ..add('title', title)
          ..add('description', description)
          ..add('order', order))
        .toString();
  }
}

class CreateTaskDtoBuilder
    implements Builder<CreateTaskDto, CreateTaskDtoBuilder> {
  _$CreateTaskDto? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  num? _order;
  num? get order => _$this._order;
  set order(num? order) => _$this._order = order;

  CreateTaskDtoBuilder() {
    CreateTaskDto._defaults(this);
  }

  CreateTaskDtoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _order = $v.order;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreateTaskDto other) {
    _$v = other as _$CreateTaskDto;
  }

  @override
  void update(void Function(CreateTaskDtoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreateTaskDto build() => _build();

  _$CreateTaskDto _build() {
    final _$result = _$v ??
        _$CreateTaskDto._(
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'CreateTaskDto', 'title'),
          description: description,
          order: order,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
