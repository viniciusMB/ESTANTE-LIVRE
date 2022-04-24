/// An object with data that regards the login process.
class UserLoginBody {
  String? email;
  String? password;

  /// Creates an [UserLoginBody] instance from the given parameters.
  /// [email] and [password] are values given by a user trying to log-in.
  UserLoginBody({
    this.email,
    this.password,
  });

  /// Creates a [Map] that represents the current [UserLoginBody] instance.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'email': email,
      'password': password,
    };
  }

  /// Returns a boolean if the data on this object is valid
  bool get validate => email != null && password != null;

  @override
  String toString() => 'UserLoginBody(email: $email, password: $password)';
}
