import 'package:dio/dio.dart';
import 'package:estante_livre/model/auth_token.dart';
import 'package:estante_livre/model/user_login_body.dart';
import 'package:estante_livre/model/user_register_body.dart';
import 'package:estante_livre/network/config/dio_singleton.dart';

/// Wrapper class with methods that can consume the backend Auth endpoints.
/// Considering the avoid_classes_with_only_static_members linter rule, it's
/// actually recommended to have those methods as independent top level
/// functions, however, this approach fits the standards seen in java, the
/// programming language used during our classes.
class AuthRepository {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension. You can see this same pattern
  // on some flutter classes, such as Colors.
  const AuthRepository._();

  static const String _signInUrl = '/signin';
  static const String _signUpUrl = '/signup';
  static const String _signOutUrl = '/signout';

  /// Attempts to sign in on the platform from a given [UserLoginBody].
  /// Saves the token in memory, on the current [DioSingleton] instance, and
  /// also persists it on an encrypted storage.
  static Future<AuthToken?> signIn(UserLoginBody data) async {
    final Response<Map<String, dynamic>> response =
        await DioSingleton.post(_signInUrl, data: data);
    final AuthToken? token =
        response.data != null ? AuthToken.fromJson(response.data!) : null;
    await DioSingleton.setToken(token?.token);

    return token;
  }

  /// Attempts to create an account from a given [UserRegisterBody].
  static Future<bool> signUp(UserRegisterBody data) async {
    final Response<Map<String, dynamic>> response =
        await DioSingleton.post(_signUpUrl, data: data);

    final bool success = response.statusCode == '200';
    return success;
  }

  /// Signs out by invalidating the curent token and removing it from memory
  /// and from the encrypted storage.
  static Future<void> signOut() async {
    await DioSingleton.put(_signOutUrl);
    await DioSingleton.setToken(null);
  }
}
