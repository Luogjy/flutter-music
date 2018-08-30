import 'package:flutter_music/baseImport.dart';

class HotKeyWordInheritedWidget extends InheritedWidget {
  String keyword;

  HotKeyWordInheritedWidget({
    Key key,
    @required this.keyword,
    @required Widget child,
  }) : super(key: key, child: child);

  static HotKeyWordInheritedWidget of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(HotKeyWordInheritedWidget);
  }

  @override
  bool updateShouldNotify(HotKeyWordInheritedWidget oldWidget) {
    // 是否重建widget就取决于数据是否相同
    return keyword != oldWidget.keyword;
  }
}
