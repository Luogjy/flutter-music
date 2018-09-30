import 'dart:async';
import 'package:dio/dio.dart';
import './DioUtils.dart';
import 'dart:math' show Random;

class Api {
  static Dio _dio = DioUtils.getDio();

  static isOk(int code) {
    return code == 0;
  }

  /// 获取轮播图
  static Future<Response> getRecommendList({Dio dio}) async {
    try {
      Response response = await (dio == null ? _dio : dio).get(
          'https://c.y.qq.com/musichall/fcgi-bin/fcg_yqqhomepagerecommend.fcg',
          data: {
            'platform': 'h5',
            'uin': 0,
            'needNewCode': 1,
          });
      print(response.data);
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }

  /// 获取热门歌单推荐
  static Future<Response> getHotMusicList({Dio dio}) async {
    try {
      Response response = await (dio == null ? _dio : dio).get(
        'https://c.y.qq.com/splcloud/fcgi-bin/fcg_get_diss_by_tag.fcg',
        data: DioUtils.commonParams
          ..addAll({
            'platform': 'yqq',
            'hostUin': 0,
            'sin': 0,
            'ein': 29,
            'sortId': 5,
            'needNewCode': 0,
            'categoryId': 10000000,
            'rnd': Random().nextInt(1000),
            'format': 'json'
          }),
      );
      print(response.data);
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }

  /// 获取歌手
  static Future<Response> getSingerList({Dio dio}) async {
    try {
      Response response = await (dio == null ? _dio : dio).get(
        'https://c.y.qq.com/v8/fcg-bin/v8.fcg',
        data: DioUtils.commonParams
          ..addAll({
            'channel': 'singer',
            'page': 'list',
            'key': 'all_all_all',
            'pagesize': 100,
            'pagenum': 1,
            'hostUin': 0,
            'needNewCode': 0,
            'platform': 'yqq'
          }),
      );
      print(response.data);
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }

  /// 获取排行榜
  static Future<Response> getCharts({Dio dio}) async {
    try {
      Response response = await (dio == null ? _dio : dio).get(
        'https://c.y.qq.com/v8/fcg-bin/fcg_myqq_toplist.fcg',
        data: DioUtils.commonParams
          ..addAll({'uin': 0, 'needNewCode': 1, 'platform': 'h5'}),
      );
      print(response.data);
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }

  /// 获取热门搜索
  static Future<Response> getHotKeyWord({Dio dio}) async {
    try {
      Response response = await (dio == null ? _dio : dio).get(
        'https://c.y.qq.com/splcloud/fcgi-bin/gethotkey.fcg',
        data: DioUtils.commonParams
          ..addAll({'uin': 0, 'needNewCode': 1, 'platform': 'h5'}),
      );
      print(response.data);
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }

  /// 搜索
  static Future<Response> searchKey(query, page, perpage,
      {Dio dio, zhida: true}) async {
    try {
      Response response = await (dio == null ? _dio : dio).get(
        'https://c.y.qq.com/soso/fcgi-bin/search_for_qq_cp',
        data: DioUtils.commonParams
          ..addAll({
            'w': query,
            'p': page,
            'perpage': perpage,
            'n': perpage,
            'catZhida': zhida ? 1 : 0,
            'zhidaqu': 1,
            't': 0,
            'flag': 1,
            'ie': 'utf-8',
            'sem': 1,
            'aggr': 0,
            'remoteplace': 'txt.mqq.all',
            'uin': 0,
            'needNewCode': 1,
            'platform': 'h5',
            'format': 'json'
          }),
      );
      print(response.data);
      return response;
    } on DioError catch (e) {
      print(e);
    }
  }
}
