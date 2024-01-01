// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'students_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$StudentsEntityImpl _$$StudentsEntityImplFromJson(Map<String, dynamic> json) =>
    _$StudentsEntityImpl(
      id: json['id'] as int?,
      age: json['age'] as String?,
      email: json['email'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$StudentsEntityImplToJson(
        _$StudentsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'age': instance.age,
      'email': instance.email,
      'name': instance.name,
    };
