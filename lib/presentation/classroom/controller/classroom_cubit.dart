import 'package:bloc/bloc.dart';
import 'package:hamon_classroom/data/entity/classroomsEntity/list_classroom_entity.dart';
import 'package:hamon_classroom/data/model/data_model.dart';
import 'package:hamon_classroom/data/repository/all_api_repo.dart';
import 'package:meta/meta.dart';

part 'classroom_state.dart';

class ClassroomCubit extends Cubit<ClassroomState> {
  ClassroomCubit() : super(ClassroomInitial());

  Future getclassroom() async {
    emit(ClassroomLoading());
    final response = await AllApiRepo.getClassrooms();
    if(response.status == 'success') {
      emit(ClassroomLoaded(response.data));
    } else {
      emit(ClassroomError(response));
    }
  }

}
