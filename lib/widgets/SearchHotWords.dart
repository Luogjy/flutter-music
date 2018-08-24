import 'package:flutter_music/baseImport.dart';

class SearchHotWords {
  static final wordList = [
    '喜欢你',
    '越来越不懂',
    '去年夏天',
    '你一定要幸福',
    '灾',
    '最美婚礼',
    '喜欢你',
    '越来越不懂',
    '去年夏天'
  ];

  static List<Widget> _getWordsItem() {
    var list = <Widget>[];
    wordList.forEach((item) {
      list.add(Material(
        color: COLOR_GRAY,
        borderRadius: BorderRadius.circular(6.0),
        child: Container(
          padding: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
          child: Text(
            item,
            style: TextStyle(
                color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_THREE,
                fontSize: 14.0),
          ),
        ),
      ));
    });
    return list;
  }

  static get() {
    return Expanded(
        child: Wrap(
      runSpacing: 10.0,
      spacing: 20.0,
      children: _getWordsItem(),
    ));
  }
}
