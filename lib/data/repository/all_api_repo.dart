import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hamon_classroom/data/handler/error_handler.dart';
import 'package:hamon_classroom/data/model/data_model.dart';

class AllApiRepo {
  // static Future<DataModel<TokenRestEntity?>> getTokenRest(LoginModel data) =>
  //     tryCatchFunction<TokenRestEntity>(
  //       method: () => AuthRepo.getTokenRest(data),
  //     );
}

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