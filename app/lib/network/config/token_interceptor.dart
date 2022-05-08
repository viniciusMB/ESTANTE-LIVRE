import 'package:dio/dio.dart';
import 'package:estante_livre/common/consts.dart';
import 'package:estante_livre/network/config/dio_singleton.dart';

/// A Dio [Interceptor] which handles token management during requests.
class TokenInterceptor extends Interceptor {
  /// Creates a [TokenInterceptor] instance which handles token management.
  TokenInterceptor();

  /// This interceptor provides a token for HTTP requests, preferrably from
  /// memory if the current [DioSingleton] has one, but it will read from the
  /// app's encrypted storage otherwise.
  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String? token;
    if (options.headers[authHeaderKey] == null) {
      token = await secureStorage.read(key: tokenKey);
    }
    token ??= null;
    options.headers[authHeaderKey] ??= token != null ? 'Bearer $token' : null;

    super.onRequest(options, handler);
  }

  /// This interceptor removes the token from the current [DioSingleton] if the
  /// previous request failed with a 401 (Unauthorized) error.
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {
      await DioSingleton.setToken(null);
    }
    super.onError(err, handler);
  }
}
