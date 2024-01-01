import 'package:freezed_annotation/freezed_annotation.dart';

part 'subjects_entity.freezed.dart';
part 'subjects_entity.g.dart';

@freezed
class SubjectsEntity with _$SubjectsEntity {
  const factory SubjectsEntity({
    int? id,
    String? credits,
    String? name,
    String? teacher,
  }) = _SubjectsEntity;

  factory SubjectsEntity.fromJson(Map<String, dynamic> json) =>
      _$SubjectsEntityFromJson(json);
}
