part of 'students_cubit.dart';

@immutable
abstract class StudentsState {}

class StudentsInitial extends StudentsState {}
class StudentLoading extends StudentsState {}
class StudentLoaded extends StudentsState {
  ListStudentsEntity? data;

  StudentLoaded(this.data);
}
class StudentError extends StudentsState {}
