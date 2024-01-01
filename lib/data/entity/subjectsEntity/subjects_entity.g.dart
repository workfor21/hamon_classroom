// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjects_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SubjectsEntityImpl _$$SubjectsEntityImplFromJson(Map<String, dynamic> json) =>
    _$SubjectsEntityImpl(
      id: json['id'] as int?,
      credits: json['credits'] as String?,
      name: json['name'] as String?,
      teacher: json['teacher'] as String?,
    );

Map<String, dynamic> _$$SubjectsEntityImplToJson(
        _$SubjectsEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'credits': instance.credits,
      'name': instance.name,
      'teacher': instance.teacher,
    };
