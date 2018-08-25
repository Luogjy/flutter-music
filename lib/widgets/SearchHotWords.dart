import 'package:flutter_music/baseImport.dart';

class SearchHotWords extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SearchHotWords> {
  var wordList = [
    '喜欢你',
    '越来越不懂',
    '去年夏天',
    '你一定要幸福',
    '灾',
    '最美婚礼',
    'danarrr喜欢你',
    '越来越不懂',
    '去年夏天'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      alignment: Alignment.topLeft,
      child: Wrap(
        runSpacing: 10.0,
        spacing: 20.0,
        children: _getWordsItem(),
      ),
    ));
  }

  List<Widget> _getWordsItem() {
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
}
