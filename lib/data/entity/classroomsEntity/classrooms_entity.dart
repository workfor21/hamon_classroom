import 'package:freezed_annotation/freezed_annotation.dart';

part 'classrooms_entity.freezed.dart';
part 'classrooms_entity.g.dart';

@freezed
class ClassroomsEntity with _$ClassroomsEntity {
  const factory ClassroomsEntity({
     int? id,
            String? layout,
            String? name,
            int? size,
  }) = _ClassroomsEntity;

  factory ClassroomsEntity.fromJson(Map<String,dynamic> json) => _$ClassroomsEntityFromJson(json);
}
