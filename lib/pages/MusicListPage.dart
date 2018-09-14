import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entitesImport.dart' show HotMusicItemEntity;

class MusicListPage extends StatefulWidget {
  HotMusicItemEntity hotMusicItemEntity;

  MusicListPage(this.hotMusicItemEntity);

  @override
  State<StatefulWidget> createState() {
    return MyState(hotMusicItemEntity);
  }
}

class MyState extends State<MusicListPage> with TickerProviderStateMixin {
  HotMusicItemEntity hotMusicItemEntity;

  MyState(this.hotMusicItemEntity);

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: CommonThemeData.get(),
      home: Scaffold(
          appBar: AppBar(
        elevation: 0.0,
        // 标题栏
        title: Text(
          hotMusicItemEntity.dissname,
          style: TextStyle(color: COLOR_YELLOW),
        ),
      )),
    );
  }
}
