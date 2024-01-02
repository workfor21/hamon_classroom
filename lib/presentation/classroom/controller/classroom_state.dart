part of 'classroom_cubit.dart';

@immutable
abstract class ClassroomState {}

class ClassroomInitial extends ClassroomState {}
class ClassroomLoading extends ClassroomState {}
class ClassroomLoaded extends ClassroomState {
  ListClassroomsEntity? data;

  ClassroomLoaded(this.data);
}
class ClassroomError extends ClassroomState {
  DataModel? error;

  ClassroomError(this.error);
}
