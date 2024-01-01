import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamon_classroom/data/entity/subjectsEntity/subjects_entity.dart';

part 'list_subjects_entity.freezed.dart';
part 'list_subjects_entity.g.dart';

@freezed
class ListSubjectsEntity with _$ListSubjectsEntity {
  const factory ListSubjectsEntity({
     List<SubjectsEntity>? subjects
  }) = _ListSubjectsEntity;

  factory ListSubjectsEntity.fromJson(Map<String,dynamic> json) => _$ListSubjectsEntityFromJson(json);
}
