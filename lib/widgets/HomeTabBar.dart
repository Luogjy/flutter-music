import 'package:flutter_music/baseImport.dart';
class HomeTabBar{
   static const homeTabs = <Widget>[
    Tab(text: '推荐'),
    Tab(text: '歌手'),
    Tab(text: '排行'),
    Tab(text: '搜索'),
  ];

 static get() {
    return TabBar(
        indicatorColor: Color(YELLOW),
        indicatorWeight: 4.0,
        indicatorSize: TabBarIndicatorSize.label,
        labelColor: Color(YELLOW),
        unselectedLabelColor: Color(TRANSLUCENT_WHITE_ZERO_POINT_FIVE),
        tabs: homeTabs);
  }
}

