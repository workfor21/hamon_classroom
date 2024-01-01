import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hamon_classroom/data/entity/studentsEntity/students_entity.dart';

part 'list_students_entity.freezed.dart';
part 'list_students_entity.g.dart';

@freezed
class ListStudentsEntity with _$ListStudentsEntity {
  const factory ListStudentsEntity({
     List<StudentsEntity>? students
  }) = _ListStudentsEntity;

  factory ListStudentsEntity.fromJson(Map<String,dynamic> json) => _$ListStudentsEntityFromJson(json);
}
