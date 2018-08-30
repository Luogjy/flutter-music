import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/SearchHotWords.dart';

class SearchHotKeyWord extends StatefulWidget {
  OnTextChanged textChanged;

  SearchHotKeyWord(this.textChanged);

  @override
  State<StatefulWidget> createState() {
    return MyState(textChanged);
  }
}

class MyState extends State<SearchHotKeyWord> {
  OnTextChanged textChanged;

  MyState(this.textChanged);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: <Widget>[
            // 标题
            Container(
                alignment: Alignment.centerLeft,
                child: Text('热门搜索',
                    style: TextStyle(
                        color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE,
                        fontSize: 14.0)),
                margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
            // 搜索热词
            SearchHotWords((item) {
              textChanged(item.k);
            })
          ],
        ),
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0));
  }
}
