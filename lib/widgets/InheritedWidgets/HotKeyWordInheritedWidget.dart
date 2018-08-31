import 'package:flutter_music/baseImport.dart';
/// 搜索关键字状态传递
class HotKeyWordInheritedWidget extends InheritedWidget {
  String keyword;

  final Function(String keyword) setKeyword;

  HotKeyWordInheritedWidget({
    Key key,
    @required Widget child,
    @required this.keyword,
    @required this.setKeyword,
  }) : super(key: key, child: child);

  static HotKeyWordInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(HotKeyWordInheritedWidget);
  }

  // 通知更新
  @override
  bool updateShouldNotify(HotKeyWordInheritedWidget oldWidget) {
    return keyword != oldWidget.keyword;
  }
}
