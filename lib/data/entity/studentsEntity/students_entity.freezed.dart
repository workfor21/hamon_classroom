// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'students_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudentsEntity _$StudentsEntityFromJson(Map<String, dynamic> json) {
  return _StudentsEntity.fromJson(json);
}

/// @nodoc
mixin _$StudentsEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get age => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudentsEntityCopyWith<StudentsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudentsEntityCopyWith<$Res> {
  factory $StudentsEntityCopyWith(
          StudentsEntity value, $Res Function(StudentsEntity) then) =
      _$StudentsEntityCopyWithImpl<$Res, StudentsEntity>;
  @useResult
  $Res call({int? id, String? age, String? email, String? name});
}

/// @nodoc
class _$StudentsEntityCopyWithImpl<$Res, $Val extends StudentsEntity>
    implements $StudentsEntityCopyWith<$Res> {
  _$StudentsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudentsEntityImplCopyWith<$Res>
    implements $StudentsEntityCopyWith<$Res> {
  factory _$$StudentsEntityImplCopyWith(_$StudentsEntityImpl value,
          $Res Function(_$StudentsEntityImpl) then) =
      __$$StudentsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? age, String? email, String? name});
}

/// @nodoc
class __$$StudentsEntityImplCopyWithImpl<$Res>
    extends _$StudentsEntityCopyWithImpl<$Res, _$StudentsEntityImpl>
    implements _$$StudentsEntityImplCopyWith<$Res> {
  __$$StudentsEntityImplCopyWithImpl(
      _$StudentsEntityImpl _value, $Res Function(_$StudentsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? age = freezed,
    Object? email = freezed,
    Object? name = freezed,
  }) {
    return _then(_$StudentsEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StudentsEntityImpl implements _StudentsEntity {
  const _$StudentsEntityImpl({this.id, this.age, this.email, this.name});

  factory _$StudentsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$StudentsEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? age;
  @override
  final String? email;
  @override
  final String? name;

  @override
  String toString() {
    return 'StudentsEntity(id: $id, age: $age, email: $email, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudentsEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, age, email, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudentsEntityImplCopyWith<_$StudentsEntityImpl> get copyWith =>
      __$$StudentsEntityImplCopyWithImpl<_$StudentsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StudentsEntityImplToJson(
      this,
    );
  }
}

abstract class _StudentsEntity implements StudentsEntity {
  const factory _StudentsEntity(
      {final int? id,
      final String? age,
      final String? email,
      final String? name}) = _$StudentsEntityImpl;

  factory _StudentsEntity.fromJson(Map<String, dynamic> json) =
      _$StudentsEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get age;
  @override
  String? get email;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$StudentsEntityImplCopyWith<_$StudentsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
