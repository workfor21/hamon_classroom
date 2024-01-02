import 'package:bloc/bloc.dart';
import 'package:hamon_classroom/data/entity/studentsEntity/list_students_entity.dart';
import 'package:hamon_classroom/data/model/data_model.dart';
import 'package:hamon_classroom/data/repository/all_api_repo.dart';
import 'package:meta/meta.dart';

part 'students_state.dart';

class StudentsCubit extends Cubit<StudentsState> {
  StudentsCubit() : super(StudentsInitial());

  Future getStudents() async {
    print('student screen');
    emit(StudentLoading());
    final response = await AllApiRepo.getStundents();
    if(response.status == 'success') {
      emit(StudentLoaded(response.data));
    } else {
      emit(StudentError(response));
    }
  }

}
