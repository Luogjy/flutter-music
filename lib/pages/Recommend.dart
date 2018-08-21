import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/RecommendSwiper.dart';
import 'package:flutter_music/entities/HotMusic.dart';

class Recommend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<Recommend> {
  var imgUrl =
      'http://p.qpic.cn/music_cover/qH8rLHHhL8O8Iibm56uPzJ2MAEe83zYEHtS2eeHyLfTacibe1nhFzrSw/600?n=1';
  var title = '私に闻いて风i';
  var subTitle = '橘里橘气！这些小姐姐在搞事情';

//  热门歌单
  var hotMusicList = [
    HotMusic(),
    HotMusic(),
    HotMusic(),
    HotMusic(),
    HotMusic(),
    HotMusic(),
    HotMusic(),
    HotMusic(),
    HotMusic(),
    HotMusic(),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: hotMusicList.length + 2,
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
            return Container(
              margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
              child: Row(
                children: <Widget>[
                  Image.network(
                    imgUrl,
                    fit: BoxFit.fitWidth,
                    width: 60.0,
                    height: 60.0,
                  ),
                  Container(child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(color: COLOR_WHITE, fontSize: 14.0),
                      ),
                      Text(subTitle,
                          style: TextStyle(
                              color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_THREE,
                              fontSize: 14.0))
                    ],
                  ) ,)

                ],
              ),
            );
          }
        });
  }
}
