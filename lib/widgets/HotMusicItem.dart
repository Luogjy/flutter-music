import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/HotMusic.dart';

class HotMusicItem {
  static final imgUrl =
      'http://p.qpic.cn/music_cover/qH8rLHHhL8O8Iibm56uPzJ2MAEe83zYEHtS2eeHyLfTacibe1nhFzrSw/600?n=1';
  static final title = '私に闻いて风i';
  static final subTitle = '橘里橘气！这些小姐姐在搞事情';

  static get(HotMusic hotMusic) {
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
          Container(
            margin: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  child: Text(
                    hotMusic.title,
                    style:
                    TextStyle(color: COLOR_WHITE, fontSize: 14.0),
                    // todo 换行不生效
                    softWrap: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                  child: Text(
                    hotMusic.subTitle,
                    style: TextStyle(
                        color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_THREE,
                        fontSize: 14.0),
                    // todo 换行不生效
                    softWrap: true,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
