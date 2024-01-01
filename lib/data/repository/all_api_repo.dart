import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hamon_classroom/core/apiService/api_service.dart';
import 'package:hamon_classroom/core/apiService/api_urls.dart';
import 'package:hamon_classroom/data/entity/classroomsEntity/list_classroom_entity.dart';
import 'package:hamon_classroom/data/entity/studentsEntity/list_students_entity.dart';
import 'package:hamon_classroom/data/entity/subjectsEntity/list_subjects_entity.dart';
import 'package:hamon_classroom/data/handler/error_handler.dart';
import 'package:hamon_classroom/data/model/data_model.dart';

class AllApiRepo {
  // classrooms
  static Future<DataModel<ListClassroomsEntity?>> getClassrooms() =>
      tryCatchFunction<ListClassroomsEntity>(
        method: () => client.getClassrooms(ApiUrls.apiKey),
      );
  
  // students
  static Future<DataModel<ListStudentsEntity?>> getStundents() =>
      tryCatchFunction<ListStudentsEntity>(
        method: () => client.getStundents(ApiUrls.apiKey),
      );
  
  // subjects
  static Future<DataModel<ListSubjectsEntity?>> getSubjects() =>
      tryCatchFunction<ListSubjectsEntity>(
        method: () => client.getSubjects(ApiUrls.apiKey),
      );
}

////////////////////////////////////////////////////////////////////////////////
// try-catch-function
Future<DataModel<T?>> tryCatchFunction<T>({required Function method}) async {
  print(method.toString());
  try {
    final response = await method();
    print('response :::: --- ' + response.toString());
    return DataModel(status: "success", data: response);
  } on DioException catch (e, stacktrace) {
    log(stacktrace.toString(), name: "dio-error");
    final error = ErrorHandling(status: 'failed', error: e);
    print(' error handling done and moving to return :: ---- ');
    return DataModel(status: 'failed', msg: error);
  } on Exception catch (e, stacktrace) {
    log(stacktrace.toString(), name: "error");
    final error = ErrorHandling(status: 'failed', error: e);
    return DataModel(status: 'failed', msg: error);
  }
}