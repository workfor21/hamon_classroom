import 'package:bloc/bloc.dart';
import 'package:hamon_classroom/data/entity/subjectsEntity/list_subjects_entity.dart';
import 'package:hamon_classroom/data/model/data_model.dart';
import 'package:hamon_classroom/data/repository/all_api_repo.dart';
import 'package:meta/meta.dart';

part 'subject_state.dart';

class SubjectCubit extends Cubit<SubjectState> {
  SubjectCubit() : super(SubjectInitial());

  Future getSubjects() async {
    emit(SubjectLoading());
    final response = await AllApiRepo.getSubjects();
    if(response.status == 'success') {
      emit(SubjectLoaded(response.data));
    } else {
      emit(SubjectError(response));
    }
  }

}
