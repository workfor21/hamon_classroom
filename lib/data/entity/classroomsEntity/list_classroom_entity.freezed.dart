// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_classroom_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListClassroomsEntity _$ListClassroomsEntityFromJson(Map<String, dynamic> json) {
  return _ListClassroomsEntity.fromJson(json);
}

/// @nodoc
mixin _$ListClassroomsEntity {
  List<ClassroomsEntity>? get classrooms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListClassroomsEntityCopyWith<ListClassroomsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListClassroomsEntityCopyWith<$Res> {
  factory $ListClassroomsEntityCopyWith(ListClassroomsEntity value,
          $Res Function(ListClassroomsEntity) then) =
      _$ListClassroomsEntityCopyWithImpl<$Res, ListClassroomsEntity>;
  @useResult
  $Res call({List<ClassroomsEntity>? classrooms});
}

/// @nodoc
class _$ListClassroomsEntityCopyWithImpl<$Res,
        $Val extends ListClassroomsEntity>
    implements $ListClassroomsEntityCopyWith<$Res> {
  _$ListClassroomsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = freezed,
  }) {
    return _then(_value.copyWith(
      classrooms: freezed == classrooms
          ? _value.classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<ClassroomsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListClassroomsEntityImplCopyWith<$Res>
    implements $ListClassroomsEntityCopyWith<$Res> {
  factory _$$ListClassroomsEntityImplCopyWith(_$ListClassroomsEntityImpl value,
          $Res Function(_$ListClassroomsEntityImpl) then) =
      __$$ListClassroomsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ClassroomsEntity>? classrooms});
}

/// @nodoc
class __$$ListClassroomsEntityImplCopyWithImpl<$Res>
    extends _$ListClassroomsEntityCopyWithImpl<$Res, _$ListClassroomsEntityImpl>
    implements _$$ListClassroomsEntityImplCopyWith<$Res> {
  __$$ListClassroomsEntityImplCopyWithImpl(_$ListClassroomsEntityImpl _value,
      $Res Function(_$ListClassroomsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? classrooms = freezed,
  }) {
    return _then(_$ListClassroomsEntityImpl(
      classrooms: freezed == classrooms
          ? _value._classrooms
          : classrooms // ignore: cast_nullable_to_non_nullable
              as List<ClassroomsEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListClassroomsEntityImpl implements _ListClassroomsEntity {
  const _$ListClassroomsEntityImpl({final List<ClassroomsEntity>? classrooms})
      : _classrooms = classrooms;

  factory _$ListClassroomsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListClassroomsEntityImplFromJson(json);

  final List<ClassroomsEntity>? _classrooms;
  @override
  List<ClassroomsEntity>? get classrooms {
    final value = _classrooms;
    if (value == null) return null;
    if (_classrooms is EqualUnmodifiableListView) return _classrooms;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListClassroomsEntity(classrooms: $classrooms)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListClassroomsEntityImpl &&
            const DeepCollectionEquality()
                .equals(other._classrooms, _classrooms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_classrooms));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListClassroomsEntityImplCopyWith<_$ListClassroomsEntityImpl>
      get copyWith =>
          __$$ListClassroomsEntityImplCopyWithImpl<_$ListClassroomsEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListClassroomsEntityImplToJson(
      this,
    );
  }
}

abstract class _ListClassroomsEntity implements ListClassroomsEntity {
  const factory _ListClassroomsEntity(
      {final List<ClassroomsEntity>? classrooms}) = _$ListClassroomsEntityImpl;

  factory _ListClassroomsEntity.fromJson(Map<String, dynamic> json) =
      _$ListClassroomsEntityImpl.fromJson;

  @override
  List<ClassroomsEntity>? get classrooms;
  @override
  @JsonKey(ignore: true)
  _$$ListClassroomsEntityImplCopyWith<_$ListClassroomsEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
