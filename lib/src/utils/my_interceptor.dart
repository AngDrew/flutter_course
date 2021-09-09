import 'package:dio/dio.dart';

class MyInterceptor extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    //
    super.onError(err, handler);
  }
}
