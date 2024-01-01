// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_subjects_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListSubjectsEntityImpl _$$ListSubjectsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ListSubjectsEntityImpl(
      subjects: (json['subjects'] as List<dynamic>?)
          ?.map((e) => SubjectsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListSubjectsEntityImplToJson(
        _$ListSubjectsEntityImpl instance) =>
    <String, dynamic>{
      'subjects': instance.subjects,
    };
