part of 'subject_cubit.dart';

@immutable
abstract class SubjectState {}

class SubjectInitial extends SubjectState {}
class SubjectLoading extends SubjectState {}
class SubjectLoaded extends SubjectState {
  ListSubjectsEntity? data;

  SubjectLoaded(this.data);
}
class SubjectError extends SubjectState {
  DataModel? error;

  SubjectError(this.error);
}