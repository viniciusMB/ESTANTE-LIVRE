import 'package:flutter/foundation.dart';

/// An object with data that regards the token.
@immutable
class AuthToken {
  /// Actual JWT token value.
  final String token;

  /// Creates an [AuthToken] instance from the given parameters.
  /// [token] is the actual value of our JWT.
  const AuthToken({
    required this.token,
  });

  /// Creates an [AuthToken] instance from a [Map].
  factory AuthToken.fromJson(Map<String, dynamic> map) {
    return AuthToken(
      token: map['token'],
    );
  }

  /// Creates a [Map] that represents the current [AuthToken] instance.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'token': token,
    };
  }

  @override
  String toString() => 'AuthToken(token: $token)';
}
