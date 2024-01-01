// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_students_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListStudentsEntity _$ListStudentsEntityFromJson(Map<String, dynamic> json) {
  return _ListStudentsEntity.fromJson(json);
}

/// @nodoc
mixin _$ListStudentsEntity {
  List<StudentsEntity>? get students => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListStudentsEntityCopyWith<ListStudentsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListStudentsEntityCopyWith<$Res> {
  factory $ListStudentsEntityCopyWith(
          ListStudentsEntity value, $Res Function(ListStudentsEntity) then) =
      _$ListStudentsEntityCopyWithImpl<$Res, ListStudentsEntity>;
  @useResult
  $Res call({List<StudentsEntity>? students});
}

/// @nodoc
class _$ListStudentsEntityCopyWithImpl<$Res, $Val extends ListStudentsEntity>
    implements $ListStudentsEntityCopyWith<$Res> {
  _$ListStudentsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_value.copyWith(
      students: freezed == students
          ? _value.students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListStudentsEntityImplCopyWith<$Res>
    implements $ListStudentsEntityCopyWith<$Res> {
  factory _$$ListStudentsEntityImplCopyWith(_$ListStudentsEntityImpl value,
          $Res Function(_$ListStudentsEntityImpl) then) =
      __$$ListStudentsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StudentsEntity>? students});
}

/// @nodoc
class __$$ListStudentsEntityImplCopyWithImpl<$Res>
    extends _$ListStudentsEntityCopyWithImpl<$Res, _$ListStudentsEntityImpl>
    implements _$$ListStudentsEntityImplCopyWith<$Res> {
  __$$ListStudentsEntityImplCopyWithImpl(_$ListStudentsEntityImpl _value,
      $Res Function(_$ListStudentsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? students = freezed,
  }) {
    return _then(_$ListStudentsEntityImpl(
      students: freezed == students
          ? _value._students
          : students // ignore: cast_nullable_to_non_nullable
              as List<StudentsEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListStudentsEntityImpl implements _ListStudentsEntity {
  const _$ListStudentsEntityImpl({final List<StudentsEntity>? students})
      : _students = students;

  factory _$ListStudentsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListStudentsEntityImplFromJson(json);

  final List<StudentsEntity>? _students;
  @override
  List<StudentsEntity>? get students {
    final value = _students;
    if (value == null) return null;
    if (_students is EqualUnmodifiableListView) return _students;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListStudentsEntity(students: $students)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListStudentsEntityImpl &&
            const DeepCollectionEquality().equals(other._students, _students));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_students));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListStudentsEntityImplCopyWith<_$ListStudentsEntityImpl> get copyWith =>
      __$$ListStudentsEntityImplCopyWithImpl<_$ListStudentsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListStudentsEntityImplToJson(
      this,
    );
  }
}

abstract class _ListStudentsEntity implements ListStudentsEntity {
  const factory _ListStudentsEntity({final List<StudentsEntity>? students}) =
      _$ListStudentsEntityImpl;

  factory _ListStudentsEntity.fromJson(Map<String, dynamic> json) =
      _$ListStudentsEntityImpl.fromJson;

  @override
  List<StudentsEntity>? get students;
  @override
  @JsonKey(ignore: true)
  _$$ListStudentsEntityImplCopyWith<_$ListStudentsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
