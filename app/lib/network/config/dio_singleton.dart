import 'package:dio/dio.dart';
import 'package:estante_livre/common/consts.dart';
import 'package:estante_livre/network/config/token_interceptor.dart';

/// Single instance of a Dio object used for HTTP requests. This class provides:
/// - Added security, by keeping the JWT on an encrypted storage
/// - Performance, by having a single Dio instance rather than creating a new
/// one with each request
/// - Better documentation, since Dio methods such as [Dio.get] provide minimal
/// documention.
class DioSingleton {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension. You can see this same pattern
  // on some flutter classes, such as Colors.
  const DioSingleton._();

  /// Dio instance responsible for making every HTTP request. It's set as a
  /// private field to avoid direct mutations to it's state.
  static final Dio _clientSingleton = Dio(
    BaseOptions(
      baseUrl: 'localhost:3004/',
      connectTimeout: 12000,
    ),
  )..interceptors.add(TokenInterceptor());

  /// Changes the current Dio instance's token to a given [token], and persists
  /// it on an ancrypted storage. Having it set to null is essentially the same
  /// as signing out locally. However, please keep in mind that getting rid of
  /// a token locally is not enough to make the token itself invalid.
  static Future<void> setToken(String? token) async {
    await secureStorage.write(key: tokenKey, value: token);
    _clientSingleton.options.headers[authHeaderKey] =
        token != null ? 'Bearer $token' : null;
  }

  /// Sends an HTTP request with the GET verb. This method will use the private
  /// singleton as our client instance, using whatever request options
  /// are currently set.
  ///
  /// Providing a value to the [options] parameter will make it so that the
  /// [DioSingleton] options are ignored for this request. when using this
  /// parameter, make sure to provide an [Options] instance containing every
  /// important option.
  static Future<Response<T>> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onReceiveProgress,
  }) =>
      _clientSingleton.get(
        path,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onReceiveProgress: onReceiveProgress,
      );

  /// Sends an HTTP request with the POST verb. This method will use the private
  /// singleton as our client instance, using whatever request options
  /// are currently set.
  ///
  /// Providing a value to the [options] parameter will make it so that the
  /// [DioSingleton] options are ignored for this request. when using this
  /// parameter, make sure to provide an [Options] instance containing every
  /// important option.
  static Future<Response<T>> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) =>
      _clientSingleton.post(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  /// Sends an HTTP request with the PUT verb. This method will use the private
  /// singleton as our client instance, using whatever request options
  /// are currently set.
  ///
  /// Providing a value to the [options] parameter will make it so that the
  /// [DioSingleton] options are ignored for this request. when using this
  /// parameter, make sure to provide an [Options] instance containing every
  /// important option.
  static Future<Response<T>> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) =>
      _clientSingleton.put(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  /// Sends an HTTP request with the PATCH verb. This method will use the
  /// private singleton as our client instance, using whatever request options
  /// are currently set.
  ///
  /// Providing a value to the [options] parameter will make it so that the
  /// [DioSingleton] options are ignored for this request. when using this
  /// parameter, make sure to provide an [Options] instance containing every
  /// important option.
  static Future<Response<T>> patch<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
    void Function(int, int)? onSendProgress,
    void Function(int, int)? onReceiveProgress,
  }) =>
      _clientSingleton.patch(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
        onSendProgress: onSendProgress,
        onReceiveProgress: onReceiveProgress,
      );

  /// Sends an HTTP request with the DELETE verb. This method will use the
  /// private singleton as our client instance, using whatever request options
  /// are currently set.
  ///
  /// Providing a value to the [options] parameter will make it so that the
  /// [DioSingleton] options are ignored for this request. when using this
  /// parameter, make sure to provide an [Options] instance containing every
  /// important option.
  static Future<Response<T>> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
    CancelToken? cancelToken,
  }) =>
      _clientSingleton.delete(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
        cancelToken: cancelToken,
      );
}
