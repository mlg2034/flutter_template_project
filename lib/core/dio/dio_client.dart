import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:template_project/core/constants/app_constants.dart';
import 'package:template_project/core/services/secure_service.dart';

class DioClient {
  static final DioClient _singleton = DioClient._internal();
  late final Dio _dio;

  factory DioClient() {
    return _singleton;
  }

  DioClient._internal() {
    _dio = Dio();
    setup();
  }

  setup() async {
    BaseOptions options = BaseOptions(
      baseUrl: AppConst.baseUrl,
      connectTimeout: AppConst.connectTimeout,
      receiveTimeout: AppConst.receiveTimeout,
    );

    _dio.options = options;
    _dio.interceptors.add(_DioInterceptor());
    String?authToken = await SecureService().getAccessToken();
    _dio.options.headers['Authorization']='Bearer $authToken';
    log('Bearer $authToken' , name: 'DioClient');
  }

  Dio get dio => _dio;
}

class _DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    log('onRequest: ${options.method} ${options.path}', name: 'DioInterceptor');
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    log('onResponse: ${response.statusCode} ${response.requestOptions.path}', name: 'DioInterceptor');
    super.onResponse(response, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler errorHandler) {
    log('onError: ${err.message}, statusCode: ${err.response?.statusCode}', name: 'DioInterceptor');

    super.onError(err, errorHandler);
  }
}
