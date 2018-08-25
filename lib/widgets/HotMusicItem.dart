import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/HotMusicEntity.dart';

class HotMusicItem extends StatefulWidget {
  HotMusicEntity hotMusic;

  HotMusicItem(HotMusicEntity hotMusic) {
    this.hotMusic = hotMusic;
  }

  @override
  State<StatefulWidget> createState() {
    return MyState(hotMusic);
  }
}

class MyState extends State<HotMusicItem> {
  var imgUrl =
      'http://p.qpic.cn/music_cover/qH8rLHHhL8O8Iibm56uPzJ2MAEe83zYEHtS2eeHyLfTacibe1nhFzrSw/600?n=1';
  var title = '私に闻いて风i';
  var subTitle = '橘里橘气！这些小姐姐在搞事情';
  HotMusicEntity hotMusic;

  MyState(hotMusic) {
    this.hotMusic = hotMusic;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
      child: Row(
        children: <Widget>[
          Image.network(
            hotMusic.imgUrl,
            fit: BoxFit.fitWidth,
            width: 60.0,
            height: 60.0,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    hotMusic.title,
                    style: TextStyle(color: COLOR_WHITE, fontSize: 14.0),
                    softWrap: true,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      hotMusic.subTitle,
                      style: TextStyle(
                          color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_THREE,
                          fontSize: 14.0),
                      softWrap: true,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
