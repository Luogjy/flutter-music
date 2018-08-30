import 'dart:async';
import 'dart:math' show Random;

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
}
