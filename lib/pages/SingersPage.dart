import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/Singer.dart';
import 'package:flutter_music/widgets/SingerItem.dart';
import 'package:flutter_music/widgets/SingersPageIndexItem.dart';

class SingersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SingersPage> {
  var singerList = <Singer>[
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer(),
    Singer()..isHead = true,
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
    Singer(),
    Singer(),
  ];

  @override
  Widget build(BuildContext context) {
    var indexList = [
      '热',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
      'A',
    ];

    List<Widget> getIndexListWidgets() {
      var list = <Widget>[];
      indexList.forEach((text) {
        list.add(SingersPageIndexItem.get(false, text));
      });
      list[0] = SingersPageIndexItem.get(true, '热');

      return list;
    }

    return Stack(
      children: <Widget>[
        // 列表
        ListView.builder(
            padding: EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 10.0),
            itemCount: singerList.length,
            itemBuilder: (context, index) {
              var singer = singerList[index];
              return SingerItem.get(singer);
            }),
        // 悬停头
        Container(
          alignment: Alignment.centerLeft,
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
        ),
        // 右侧索引栏
        Container(
          alignment: Alignment.centerRight,
          child: Container(
            width: 18.0,
            height: indexList.length * 18.0 + 40,
            child: Material(
              borderRadius: BorderRadius.circular(9.0),
              color: COLOR_TRANSLUCENT_BLACK_ZERO_POINT_EIGHT,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: getIndexListWidgets(),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
