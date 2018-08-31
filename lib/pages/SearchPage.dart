import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/SearchResult.dart';
import 'package:flutter_music/widgets/SearchHotKeyWord.dart';
import 'package:flutter_music/widgets/SearchTextField.dart';
import 'package:flutter_music/inheritedWidgetImport.dart';

/// 搜索页
class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SearchPage> {
  // 搜索输入框的内容
  String inputText = '';
  int showIndex = 0;

  MyState() {
    _search();
  }

  _setKeyword(String keyword) {
    setState(() {
      this.inputText = keyword;
      this.showIndex = keyword.isEmpty ? 0 : 1;
    });
    if (keyword.isNotEmpty) {
      _search();
    }
  }

  _search(query, page, zhida, perpage) async {
    Response response = await Api.search(query, page, zhida, perpage);
    if (response == null) {
      MyToast.show('搜索热词请求出错');
    } else {
      HotKeyResp resp = HotKeyResp.fromJson(json.decode(response.data));
      if (Api.isOk(resp.code)) {
        // 随机范围获取10条
        if (resp.data.hotkey.length > 9) {
          var range =
              await MyUtils.getRandomIntRange(resp.data.hotkey.length - 1, 10);
          setState(() {
            hotKeyList = resp.data.hotkey.sublist(range[0], range[1] + 1);
          });
        } else {
          setState(() {
            hotKeyList = resp.data.hotkey;
          });
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return HotKeyWordInheritedWidget(
      keyword: inputText,
      setKeyword: _setKeyword,
      child: Column(
        children: <Widget>[
          // 输入框
          SearchTextField(),
          // 热门搜索和搜索结果
          Expanded(
            child: IndexedStack(
              index: showIndex,
              children: <Widget>[
                // 热门搜索
                SearchHotKeyWord(),
                // 搜索结果
                SearchResult(),
              ], //
            ),
          )
          //
        ],
      ),
    );
  }
}
