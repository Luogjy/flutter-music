import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/RecommendSwiper.dart';
import 'package:flutter_music/widgets/HotMusicList.dart';

class Recommend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<Recommend> {


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: HotMusicList.getHotMusicList().length + 2,
        itemBuilder: (context, index) {
          if (index == 0) {
            return RecommendSwiper.get();
          } else if (index == 1) {
            return Container(
              height: 65.0,
              alignment: Alignment.center,
              child: Text('热门歌单推荐',
                  style: TextStyle(color: COLOR_YELLOW, fontSize: 14.0)),
            );
          } else {
            return HotMusicList.get();
          }
        });
  }
}
