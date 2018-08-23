import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/Singer.dart';
import 'package:flutter_music/widgets/SingerItem.dart';

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
              return SingerItem.get(singer);
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
