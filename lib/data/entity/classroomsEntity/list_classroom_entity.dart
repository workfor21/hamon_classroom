import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamon_classroom/data/entity/classroomsEntity/classrooms_entity.dart';

part 'list_classroom_entity.freezed.dart';
part 'list_classroom_entity.g.dart';

@freezed
class ListClassroomsEntity with _$ListClassroomsEntity {
  const factory ListClassroomsEntity({
     List<ClassroomsEntity>? classrooms
  }) = _ListClassroomsEntity;

  factory ListClassroomsEntity.fromJson(Map<String,dynamic> json) => _$ListClassroomsEntityFromJson(json);
}
