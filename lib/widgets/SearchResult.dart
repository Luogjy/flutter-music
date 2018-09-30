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
  final pageSize = 20; // 每页
  List<SongItem> songList = [];
  HotKeyWordInheritedWidget inheritedWidget;
  bool isLoading = false;
  bool noMore = false; // 没有更多数据

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent /*最大滚动长度*/) {
        print("loadMore");
        _searchKey();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _search(context);

    return ListView.builder(
        padding: EdgeInsets.fromLTRB(30.0, 10.0, 30.0, 0.0),
        itemCount: songList.length + 1,
        controller: _scrollController,
        itemBuilder: (context, index) {
          if (songList.length == index) {
            if (noMore) {
              return LoadWidget('没有更多了');
            }
            return LoadWidget('加载中...');
          }
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

  void _search(BuildContext context) {
     inheritedWidget = HotKeyWordInheritedWidget.of(context);
    if (inheritedWidget.keyword.isNotEmpty) {
      if (currentKeyword != inheritedWidget.keyword) {
        setState(() {
          songList.clear();
          noMore = false;
          page = 1;
        });
        _searchKey();
      }
    }
  }

  _searchKey() async {
    if (noMore) {
      return;
    }
    if (!isLoading) {
      isLoading = true;
      Response response =
          await Api.searchKey(inheritedWidget.keyword, page, pageSize);
      isLoading = false;
      if (response == null) {
        MyToast.show('搜索出错');
      } else {
        SearchResultResp resp =
            SearchResultResp.fromJson(json.decode(response.data));
        if (Api.isOk(resp.code)) {
          setState(() {
            currentKeyword = resp.data.keyword;
            if (songList.length + pageSize >= resp.data.song.totalnum) {
              noMore = true;
            }
            songList.addAll(resp.data.song.list);
            page++;
          });
        }
      }
    }
  }
}
