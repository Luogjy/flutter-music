import 'package:flutter_music/baseImport.dart';
/// 搜索页的搜索结果部分
class SearchResult extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SearchResult> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
        itemCount: 100,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Image.asset(
                    'images/music.png',
                    width: 14.0,
                    height: 14.0,
                  ),
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 16.0, 0.0),
                ),
                Expanded(
                    child: Text(
                  '越来越不懂',
                  style: TextStyle(
                      color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_THREE,
                      fontSize: 14.0),
                  overflow: TextOverflow.ellipsis,
                ))
              ],
            ),
          );
        });
  }
}
