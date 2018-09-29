import 'dart:async';
import 'dart:math' show Random;
import 'package:flutter/material.dart';

class MyUtils {
  /// 获取随机范围
  static Future<List<int>> getRandomIntRange(int max, int range) async {
    if (max <= 0) {
      throw Exception('max 不可必须大于0');
    }
    if (range <= 0) {
      throw Exception('range 不可必须大于0');
    }
    if (max < range) {
      throw Exception('max 必须大于 range');
    }
    int difference = max - range;
    for (;;) {
      int start = Random().nextInt(max);
      if (start + difference <= max) {
        return [start, start + range - 1];
      }
    }
  }

  /// 获取屏幕宽度
  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  /// 获取屏幕高度
  static double getScreenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  /// 获取系统状态栏高度
  static double getSysStatsHeight(BuildContext context) {
    return MediaQuery.of(context).padding.top;
  }

  /// 获取安全区域高度
  static double getSafeAreaHeight(BuildContext context) {
    return getScreenHeight(context) - getSysStatsHeight(context);
  }
}
