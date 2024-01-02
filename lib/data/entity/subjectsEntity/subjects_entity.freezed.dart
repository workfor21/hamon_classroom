// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subjects_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubjectsEntity _$SubjectsEntityFromJson(Map<String, dynamic> json) {
  return _SubjectsEntity.fromJson(json);
}

/// @nodoc
mixin _$SubjectsEntity {
  int? get id => throw _privateConstructorUsedError;
  int? get credits => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get teacher => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubjectsEntityCopyWith<SubjectsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubjectsEntityCopyWith<$Res> {
  factory $SubjectsEntityCopyWith(
          SubjectsEntity value, $Res Function(SubjectsEntity) then) =
      _$SubjectsEntityCopyWithImpl<$Res, SubjectsEntity>;
  @useResult
  $Res call({int? id, int? credits, String? name, String? teacher});
}

/// @nodoc
class _$SubjectsEntityCopyWithImpl<$Res, $Val extends SubjectsEntity>
    implements $SubjectsEntityCopyWith<$Res> {
  _$SubjectsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? credits = freezed,
    Object? name = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubjectsEntityImplCopyWith<$Res>
    implements $SubjectsEntityCopyWith<$Res> {
  factory _$$SubjectsEntityImplCopyWith(_$SubjectsEntityImpl value,
          $Res Function(_$SubjectsEntityImpl) then) =
      __$$SubjectsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, int? credits, String? name, String? teacher});
}

/// @nodoc
class __$$SubjectsEntityImplCopyWithImpl<$Res>
    extends _$SubjectsEntityCopyWithImpl<$Res, _$SubjectsEntityImpl>
    implements _$$SubjectsEntityImplCopyWith<$Res> {
  __$$SubjectsEntityImplCopyWithImpl(
      _$SubjectsEntityImpl _value, $Res Function(_$SubjectsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? credits = freezed,
    Object? name = freezed,
    Object? teacher = freezed,
  }) {
    return _then(_$SubjectsEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      credits: freezed == credits
          ? _value.credits
          : credits // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      teacher: freezed == teacher
          ? _value.teacher
          : teacher // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubjectsEntityImpl implements _SubjectsEntity {
  const _$SubjectsEntityImpl({this.id, this.credits, this.name, this.teacher});

  factory _$SubjectsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$SubjectsEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final int? credits;
  @override
  final String? name;
  @override
  final String? teacher;

  @override
  String toString() {
    return 'SubjectsEntity(id: $id, credits: $credits, name: $name, teacher: $teacher)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubjectsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.credits, credits) || other.credits == credits) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.teacher, teacher) || other.teacher == teacher));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, credits, name, teacher);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubjectsEntityImplCopyWith<_$SubjectsEntityImpl> get copyWith =>
      __$$SubjectsEntityImplCopyWithImpl<_$SubjectsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubjectsEntityImplToJson(
      this,
    );
  }
}

abstract class _SubjectsEntity implements SubjectsEntity {
  const factory _SubjectsEntity(
      {final int? id,
      final int? credits,
      final String? name,
      final String? teacher}) = _$SubjectsEntityImpl;

  factory _SubjectsEntity.fromJson(Map<String, dynamic> json) =
      _$SubjectsEntityImpl.fromJson;

  @override
  int? get id;
  @override
  int? get credits;
  @override
  String? get name;
  @override
  String? get teacher;
  @override
  @JsonKey(ignore: true)
  _$$SubjectsEntityImplCopyWith<_$SubjectsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
