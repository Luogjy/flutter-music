import 'package:dio/dio.dart';

class DioUtils {
  static Dio getDio({String baseUrl, Map<String, dynamic> headers}) {
    return Dio(getOptions(baseUrl: baseUrl, headers: headers));
  }

  static Options getOptions({String baseUrl, Map<String, dynamic> headers}) {
    Options options = _getOptions();
    if (headers != null) {
      options.headers.addAll(headers);
    }

    if (baseUrl != null) {
      options.baseUrl = baseUrl;
    }
    return options;
  }

  static final commonParams = {
    'g_tk': 1928093487,
    'inCharset': 'utf-8',
    'outCharset': 'utf-8',
    'notice': 0,
    'format': 'jsonp'
  };

  static Options _getOptions() {
    return Options(connectTimeout: 5000, receiveTimeout: 3000, headers: {
      'referer': 'https://c.y.qq.com/',
      'host': 'c.y.qq.com',
      'origin': 'https://y.qq.com',
    });
  }

}
