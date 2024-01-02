import 'package:freezed_annotation/freezed_annotation.dart';

part 'students_entity.freezed.dart';
part 'students_entity.g.dart';

@freezed
class StudentsEntity with _$StudentsEntity {
  const factory StudentsEntity({
            int? id,
     int? age,
            String? email,
            String? name,
  }) = _StudentsEntity;

  factory StudentsEntity.fromJson(Map<String,dynamic> json) => _$StudentsEntityFromJson(json);
}
