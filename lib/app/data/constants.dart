// ignore_for_file: constant_identifier_names

abstract class Constants {
  static const SUCCESS = 'success';
  static const VERSION = '1.0.6';
  static const BASE_URL = 'https://apidsds.ru:10001/api/v1/';
  static const IMAGES_PATH = 'assets/img';
  static const LANGUAGE_PATH = 'assets/locales';
  static const String COUNTRY_CODE = 'country_code';
  static const String LANGUAGE_CODE = 'language_code';
}

abstract class HttpHeaders {
  static const AccessToken = 'token';
  static const RefreshToken = 'refreshToken';
}

class AppConstants {}

enum HttpMethod {
  GET,
  POST,
  DELETE,
  PUT,
}

enum DataStatus {
  init,
  loading,
  success,
  error,
}
