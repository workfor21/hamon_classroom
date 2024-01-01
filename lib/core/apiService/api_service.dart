import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:hamon_classroom/core/apiService/api_urls.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

final client = ApiServices(Dio(), baseUrl: ApiUrls.baseUrl);

@RestApi(baseUrl: ApiUrls.baseUrl)
abstract class ApiServices {
  factory ApiServices(Dio dio, {String? baseUrl}) {
    dio.options = BaseOptions(
        maxRedirects: 3,
        sendTimeout: Duration(seconds: 10),
        receiveTimeout: Duration(seconds: 10),
        connectTimeout: Duration(seconds: 10),
        headers: {
          "Content-Type": "application/json",
          "Accept": "application/json",
        });

    // init();
    dio.interceptors.add(CustomInterceptor());
    return _ApiServices(dio, baseUrl: baseUrl);
  }

  //registraton
  @GET('/registraton')
  Future getRegistrations(
    @Query('api_key') String apikey,
  );
  
  //classrooms
  @GET('/classrooms')
  Future getClassrooms(
    @Query('api_key') String apikey,
  );
  
  //students
  @GET('/students')
  Future getStundents(
    @Query('api_key') String apikey,
  );
  
  //subjects
  @GET('/subjects')
  Future getSubjects(
    @Query('api_key') String apikey,
  );
}

class CustomInterceptor extends Interceptor {
  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    log(options.path, name: "request : path");
    final data = options.data;
    if (options.data is FormData) {
      data as FormData;
      data.fields.forEach((field) {
        print('${field.key}: ${field.value}');
      });
    } else {
      log(options.data.toString(), name: "request : body");
    }
    log(options.headers.toString(), name: "request : headers");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log(response.statusCode.toString(), name: "response : statusCode");
    log(response.data.toString(), name: "response : data");
    log(response.realUri.toString(), name: "response : url");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    log(err.response?.statusCode.toString() ?? '', name: "error : statusCode");
    log(err.stackTrace.toString(), name: "error : stackTrace");
    super.onError(err, handler);
  }
}