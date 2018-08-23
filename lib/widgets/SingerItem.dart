import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/Singer.dart';
class SingerItem{
  static get(Singer singer){
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