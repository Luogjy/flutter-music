import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entitesImport.dart';

class HotMusicItem extends StatefulWidget {
  HotMusicItemEntity hotMusicItemEntity;

  HotMusicItem(this.hotMusicItemEntity);

  @override
  State<StatefulWidget> createState() {
    return MyState(this.hotMusicItemEntity);
  }
}

class MyState extends State<HotMusicItem> {
  HotMusicItemEntity hotMusicItemEntity;

  MyState(this.hotMusicItemEntity);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 20.0),
      child: Row(
        children: <Widget>[
          Image.network(
            hotMusicItemEntity?.imgurl,
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
                    hotMusicItemEntity?.creator?.name?.trim(),
                    style: TextStyle(color: COLOR_WHITE, fontSize: 14.0),
                    softWrap: true,
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                    child: Text(
                      hotMusicItemEntity?.dissname?.trim(),
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
