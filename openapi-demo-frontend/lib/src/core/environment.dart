class Environment {
  static const String environment = String.fromEnvironment('env', defaultValue: 'dev');
  static const String baseUrl =
      String.fromEnvironment('base_url', defaultValue: 'http://localhost:3000');
}
