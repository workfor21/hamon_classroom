// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_classroom_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListClassroomsEntityImpl _$$ListClassroomsEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ListClassroomsEntityImpl(
      classrooms: (json['classrooms'] as List<dynamic>?)
          ?.map((e) => ClassroomsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ListClassroomsEntityImplToJson(
        _$ListClassroomsEntityImpl instance) =>
    <String, dynamic>{
      'classrooms': instance.classrooms,
    };
