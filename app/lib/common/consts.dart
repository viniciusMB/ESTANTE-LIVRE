import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const String tokenKey = 'token';
const String authHeaderKey = 'Authorization';

/// TODO - Get this url from an environment variable, if adequate.
/// Base url for HTTP requests.
const String apiBaseUrl = 'http://localhost:3000';

// Creates a safe, encrypted storage.
const FlutterSecureStorage secureStorage = FlutterSecureStorage();
