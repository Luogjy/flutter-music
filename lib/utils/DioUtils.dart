import 'package:dio/dio.dart';

class DioUtils {
  static Dio getDio({String baseUrl}) {
    getOptions(baseUrl: baseUrl);
    return Dio(getOptions(baseUrl: baseUrl));
  }

  static Options getOptions({String baseUrl}) {
    if (baseUrl != null) {
      return _getOptions()..baseUrl = baseUrl;
    } else {
      _getOptions();
    }
  }

  static Options _getOptions() {
    return Options(connectTimeout: 5000, receiveTimeout: 3000);
  }

  static isOk(int code) {
    return code == 0;
  }
}
