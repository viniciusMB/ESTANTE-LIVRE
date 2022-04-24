/// An object with data that regards the register process.
class UserRegisterBody {
  String? username;
  String? email;
  String? password;
  String? confirmPassword;

  /// Creates an [UserRegisterBody] instance from the given parameters.
  /// [username], [email], [password] and [confirmPassword] are values given
  /// by a user trying to register.
  UserRegisterBody({
    this.username,
    this.email,
    this.password,
    this.confirmPassword,
  });

  /// Creates a [Map] that represents the current [UserRegisterBody] instance.
  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'username': username,
      'email': email,
      'password': password,
    };
  }

  /// Returns a boolean if the data on this object is valid
  bool get validate =>
      username != null &&
      email != null &&
      password != null &&
      password == confirmPassword;

  @override
  String toString() {
    return 'UserRegisterBody(username: $username, email: $email, '
        'password: $password, confirmPassword: $confirmPassword)';
  }
}
