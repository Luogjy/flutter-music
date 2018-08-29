import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entitesImport.dart';

class SingerItem extends StatefulWidget {
  Singer singer;

  SingerItem(this.singer);

  @override
  State<StatefulWidget> createState() {
    return MyState(singer);
  }
}

class MyState extends State<SingerItem> {
  Singer singer;

  MyState(this.singer);

  @override
  Widget build(BuildContext context) {
    if (singer.isHead) {
      return Container(
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.fromLTRB(
            0.0, (singer.Fsinger_name == '热' ? 0.0 : 10.0), 0.0, 10.0),
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
        child: Text(
          singer.Fsinger_name,
          style: TextStyle(
            fontSize: 12.0,
            color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE,
          ),
        ),
        height: 30.0,
        color: Color(0xFF333333),
      );
    }
    return GestureDetector(
      onTap: () {
        // 点击监听
        print(singer);
      },
      child: Container(
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
                    'https://y.gtimg.cn/music/photo_new/T001R300x300M000'
                        '${singer.Fsinger_mid}.jpg?max_age=2592000',
                  ),
                ),
              ),
            ),
            Text(
              singer.Fsinger_name,
              style: TextStyle(
                  fontSize: 14.0,
                  color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE),
            )
          ],
        ),
      ),
    );
  }
}
