// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'classrooms_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ClassroomsEntity _$ClassroomsEntityFromJson(Map<String, dynamic> json) {
  return _ClassroomsEntity.fromJson(json);
}

/// @nodoc
mixin _$ClassroomsEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get layout => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ClassroomsEntityCopyWith<ClassroomsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassroomsEntityCopyWith<$Res> {
  factory $ClassroomsEntityCopyWith(
          ClassroomsEntity value, $Res Function(ClassroomsEntity) then) =
      _$ClassroomsEntityCopyWithImpl<$Res, ClassroomsEntity>;
  @useResult
  $Res call({int? id, String? layout, String? name, String? size});
}

/// @nodoc
class _$ClassroomsEntityCopyWithImpl<$Res, $Val extends ClassroomsEntity>
    implements $ClassroomsEntityCopyWith<$Res> {
  _$ClassroomsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? layout = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassroomsEntityImplCopyWith<$Res>
    implements $ClassroomsEntityCopyWith<$Res> {
  factory _$$ClassroomsEntityImplCopyWith(_$ClassroomsEntityImpl value,
          $Res Function(_$ClassroomsEntityImpl) then) =
      __$$ClassroomsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? layout, String? name, String? size});
}

/// @nodoc
class __$$ClassroomsEntityImplCopyWithImpl<$Res>
    extends _$ClassroomsEntityCopyWithImpl<$Res, _$ClassroomsEntityImpl>
    implements _$$ClassroomsEntityImplCopyWith<$Res> {
  __$$ClassroomsEntityImplCopyWithImpl(_$ClassroomsEntityImpl _value,
      $Res Function(_$ClassroomsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? layout = freezed,
    Object? name = freezed,
    Object? size = freezed,
  }) {
    return _then(_$ClassroomsEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ClassroomsEntityImpl implements _ClassroomsEntity {
  const _$ClassroomsEntityImpl({this.id, this.layout, this.name, this.size});

  factory _$ClassroomsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassroomsEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? layout;
  @override
  final String? name;
  @override
  final String? size;

  @override
  String toString() {
    return 'ClassroomsEntity(id: $id, layout: $layout, name: $name, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassroomsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.layout, layout) || other.layout == layout) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, layout, name, size);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassroomsEntityImplCopyWith<_$ClassroomsEntityImpl> get copyWith =>
      __$$ClassroomsEntityImplCopyWithImpl<_$ClassroomsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassroomsEntityImplToJson(
      this,
    );
  }
}

abstract class _ClassroomsEntity implements ClassroomsEntity {
  const factory _ClassroomsEntity(
      {final int? id,
      final String? layout,
      final String? name,
      final String? size}) = _$ClassroomsEntityImpl;

  factory _ClassroomsEntity.fromJson(Map<String, dynamic> json) =
      _$ClassroomsEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get layout;
  @override
  String? get name;
  @override
  String? get size;
  @override
  @JsonKey(ignore: true)
  _$$ClassroomsEntityImplCopyWith<_$ClassroomsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
