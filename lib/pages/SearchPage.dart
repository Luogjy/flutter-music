import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/SearchResultItem.dart';
import 'package:flutter_music/widgets/SearchHotWords.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(20.0),
          height: 40.0,
          child: Material(
            borderRadius: BorderRadius.circular(6.0),
            color: COLOR_GRAY,
            child: Container(),
          ),
        ),
        Expanded(
          child: IndexedStack(
            index: 0,
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    // 标题
                    Container(
                      child: Text(
                        '热门搜索',
                        style: TextStyle(
                            color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE,
                            fontSize: 14.0),
                      ),
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
                    ),
                    // 搜索热词
                    SearchHotWords.get()
                  ],
                ),
                padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 0.0),
              ),
              SearchResultItem.get(),
            ], //
          ),
        )
        //
      ],
    );
  }
}
