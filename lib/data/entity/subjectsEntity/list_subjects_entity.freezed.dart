// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_subjects_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListSubjectsEntity _$ListSubjectsEntityFromJson(Map<String, dynamic> json) {
  return _ListSubjectsEntity.fromJson(json);
}

/// @nodoc
mixin _$ListSubjectsEntity {
  List<SubjectsEntity>? get subjects => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListSubjectsEntityCopyWith<ListSubjectsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListSubjectsEntityCopyWith<$Res> {
  factory $ListSubjectsEntityCopyWith(
          ListSubjectsEntity value, $Res Function(ListSubjectsEntity) then) =
      _$ListSubjectsEntityCopyWithImpl<$Res, ListSubjectsEntity>;
  @useResult
  $Res call({List<SubjectsEntity>? subjects});
}

/// @nodoc
class _$ListSubjectsEntityCopyWithImpl<$Res, $Val extends ListSubjectsEntity>
    implements $ListSubjectsEntityCopyWith<$Res> {
  _$ListSubjectsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
  }) {
    return _then(_value.copyWith(
      subjects: freezed == subjects
          ? _value.subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectsEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListSubjectsEntityImplCopyWith<$Res>
    implements $ListSubjectsEntityCopyWith<$Res> {
  factory _$$ListSubjectsEntityImplCopyWith(_$ListSubjectsEntityImpl value,
          $Res Function(_$ListSubjectsEntityImpl) then) =
      __$$ListSubjectsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SubjectsEntity>? subjects});
}

/// @nodoc
class __$$ListSubjectsEntityImplCopyWithImpl<$Res>
    extends _$ListSubjectsEntityCopyWithImpl<$Res, _$ListSubjectsEntityImpl>
    implements _$$ListSubjectsEntityImplCopyWith<$Res> {
  __$$ListSubjectsEntityImplCopyWithImpl(_$ListSubjectsEntityImpl _value,
      $Res Function(_$ListSubjectsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subjects = freezed,
  }) {
    return _then(_$ListSubjectsEntityImpl(
      subjects: freezed == subjects
          ? _value._subjects
          : subjects // ignore: cast_nullable_to_non_nullable
              as List<SubjectsEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListSubjectsEntityImpl implements _ListSubjectsEntity {
  const _$ListSubjectsEntityImpl({final List<SubjectsEntity>? subjects})
      : _subjects = subjects;

  factory _$ListSubjectsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListSubjectsEntityImplFromJson(json);

  final List<SubjectsEntity>? _subjects;
  @override
  List<SubjectsEntity>? get subjects {
    final value = _subjects;
    if (value == null) return null;
    if (_subjects is EqualUnmodifiableListView) return _subjects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ListSubjectsEntity(subjects: $subjects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListSubjectsEntityImpl &&
            const DeepCollectionEquality().equals(other._subjects, _subjects));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_subjects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListSubjectsEntityImplCopyWith<_$ListSubjectsEntityImpl> get copyWith =>
      __$$ListSubjectsEntityImplCopyWithImpl<_$ListSubjectsEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListSubjectsEntityImplToJson(
      this,
    );
  }
}

abstract class _ListSubjectsEntity implements ListSubjectsEntity {
  const factory _ListSubjectsEntity({final List<SubjectsEntity>? subjects}) =
      _$ListSubjectsEntityImpl;

  factory _ListSubjectsEntity.fromJson(Map<String, dynamic> json) =
      _$ListSubjectsEntityImpl.fromJson;

  @override
  List<SubjectsEntity>? get subjects;
  @override
  @JsonKey(ignore: true)
  _$$ListSubjectsEntityImplCopyWith<_$ListSubjectsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
