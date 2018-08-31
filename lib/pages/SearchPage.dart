import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/SearchResult.dart';
import 'package:flutter_music/widgets/SearchHotKeyWord.dart';
import 'package:flutter_music/widgets/SearchTextField.dart';
import 'package:flutter_music/inheritedWidgetImport.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SearchPage> {
  String inputText = '';

  _setKeyword(String keyword) {
    setState(() {
      this.inputText = keyword;
    });
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
              index: 0,
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
