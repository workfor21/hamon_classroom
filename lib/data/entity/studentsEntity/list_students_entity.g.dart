// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_students_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListStudentsEntityImpl _$$ListStudentsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ListStudentsEntityImpl(
      students: (json['students'] as List<dynamic>?)
          ?.map((e) => StudentsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListStudentsEntityImplToJson(
        _$ListStudentsEntityImpl instance) =>
    <String, dynamic>{
      'students': instance.students,
    };
