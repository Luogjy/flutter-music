import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entitesImport.dart';
import 'package:flutter_music/inheritedWidgetImport.dart'
    show HotKeyWordInheritedWidget;

/// 搜索页的搜索结果部分
class SearchResult extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SearchResult> {
  int page = 1; // 页码
  String currentKeyword = '';
  final perpage = 20; // 每页
  List<SongItem> songList = [];
  HotKeyWordInheritedWidget inheritedWidget;

  _search() async {
    Response response =
        await Api.search(inheritedWidget.keyword, page, perpage);
    if (response == null) {
      MyToast.show('搜索出错');
    } else {
      SearchResultResp resp =
          SearchResultResp.fromJson(json.decode(response.data));
      if (Api.isOk(resp.code)) {
        setState(() {
          currentKeyword = resp.data.keyword;
          songList.addAll(resp.data.song.list);
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    print('啦啦啦');
    inheritedWidget = HotKeyWordInheritedWidget.of(context);
    if (inheritedWidget.keyword.isNotEmpty) {
      if (currentKeyword != inheritedWidget.keyword) {
        setState(() {
          songList.clear();
        });
        _search();
      }
    }

    return ListView.builder(
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
        itemCount: songList.length,
        itemBuilder: (context, index) {
          var song = songList[index];
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
                  '${song.albumname}-${song.singer[0].name}',
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
