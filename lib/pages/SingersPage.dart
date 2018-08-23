import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/Singer.dart';

class SingersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SingersPage> {
  var singerList = [
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer(),
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView.builder(
            padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 10.0),
            itemCount: singerList.length,
            itemBuilder: (context, index) {
              var singer = singerList[index];
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
            }),
        Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
          child: Text(
            '热门',
            style: TextStyle(
              fontSize: 12.0,
              color: COLOR_TRANSLUCENT_BLACK_ZERO_POINT_EIGHT,
            ),
          ),
          height: 30.0,
          color: Color(0xFF333333),
        )
      ],
    );
  }
}
