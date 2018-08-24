import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/SingerEntity.dart';
class SingerItem{
  static get(SingerEntity singer){
    if(singer.isHead) {
      return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
        child: Text(
          '热门',
          style: TextStyle(
            fontSize: 12.0,
            color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE,
          ),
        ),
        height: 30.0,
        color: Color(0xFF333333),
      );
    }
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            padding: EdgeInsets.fromLTRB(30.0, 10.0, 20.0, 10.0),
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircleAvatar(
                backgroundImage: new NetworkImage(
                  singer.imgUrl,
                ),
              ),
            ),
          ),
          Text(
            singer.singerName,
            style: TextStyle(
                fontSize: 14.0,
                color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE),
          )
        ],
      ),
    );
  }
}