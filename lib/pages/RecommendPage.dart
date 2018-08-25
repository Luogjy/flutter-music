import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/RecommendSwiper.dart';
import 'package:flutter_music/widgets/HotMusicItem.dart';
import 'package:flutter_music/entities/HotMusicEntity.dart';

class RecommendPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<RecommendPage> {
  //  热门歌单
  static final hotMusicList = [
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
    HotMusicEntity(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: hotMusicList.length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return RecommendSwiper();
          } else if (index == 1) {
            return Container(
              height: 65.0,
              alignment: Alignment.center,
              child: Text('热门歌单推荐',
                  style: TextStyle(color: COLOR_YELLOW, fontSize: 14.0)),
            );
          } else {
            var hotMusic = hotMusicList[index - 2];
            return HotMusicItem(hotMusic);
          }
        });
  }
}
