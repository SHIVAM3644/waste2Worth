import 'package:dio/dio.dart';

class ApiService {
  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "http://10.173.90.226:3000/",
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      headers: {"Content-Type": "application/json"},
    ),
  );

  /// Generic GET
  static Future<Response> getRequest(
    String endpoint, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(
        endpoint,
        queryParameters: queryParameters,
      );
      return response;
    } on DioException catch (e) {
      throw Exception(_handleDioError(e));
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }

  /// Generic POST
  static Future<Response> post(String endpoint, {dynamic data}) async {
    try {
      final response = await _dio.post(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception(_handleDioError(e));
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }

  /// Generic PUT
  static Future<Response> put(String endpoint, {dynamic data}) async {
    try {
      final response = await _dio.put(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception(_handleDioError(e));
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }

  /// Generic DELETE
  static Future<Response> delete(String endpoint, {dynamic data}) async {
    try {
      final response = await _dio.delete(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception(_handleDioError(e));
    } catch (e) {
      throw Exception("Unexpected error: $e");
    }
  }

  /// Dio error handler
  static String _handleDioError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return "Connection timed out";
      case DioExceptionType.receiveTimeout:
        return "Receive timeout";
      case DioExceptionType.badResponse:
        return "Bad response: ${e.response?.statusCode}";
      case DioExceptionType.connectionError:
        return "No internet connection";
      default:
        return "Something went wrong: ${e.message}";
    }
  }
}
