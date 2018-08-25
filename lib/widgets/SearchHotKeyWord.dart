import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/SearchHotWords.dart';

class SearchHotKeyWord {
  static Widget get() {
    return Container(
        child: Column(
          children: <Widget>[
            // 标题
            Container(
                child: Text('热门搜索',
                    style: TextStyle(
                        color:
                        COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE,
                        fontSize: 14.0)),
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
            // 搜索热词
            SearchHotWords.get()
          ],
        ),
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0));
  }
}