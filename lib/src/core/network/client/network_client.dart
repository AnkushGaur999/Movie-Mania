import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class NetworkClient {
  final Dio _dio = Dio();

  NetworkClient() {
    _dio.options = BaseOptions(
      baseUrl: 'https://fooapi.com/api/',
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),
      headers: {'Content-Type': 'application/json'},
    );
  }

  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await _dio.get(path, queryParameters: queryParameters);
    } on DioException catch (_) {
      rethrow;
    }
  }

  Future<Response> post(
    String path,
    dynamic data, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      return await _dio.post(
        path,
        data: data,
        queryParameters: queryParameters,
      );
    } on DioException catch (_) {
      rethrow;
    }
  }
}
