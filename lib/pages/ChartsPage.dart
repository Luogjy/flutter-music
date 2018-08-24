import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entities/ChartEntity.dart';

/// 排行页
class ChartsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<ChartsPage> {
  var charEntities = <ChartEntity>[
    ChartEntity(),
    ChartEntity(),
    ChartEntity(),
    ChartEntity(),
    ChartEntity(),
    ChartEntity(),
    ChartEntity(),
  ];

  List<Widget> getCharItems(ChartEntity chartEntity) {
    var list = <Widget>[];

    for (var i = 0; i < chartEntity.topThree.length; i++) {
      list.add(Text(
        '${i + 1} ${chartEntity.topThree[i]}',
        style: TextStyle(
            color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_THREE, fontSize: 12.0),
      ));
    }

    chartEntity.topThree.forEach((text) {});
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        itemCount: charEntities.length,
        itemBuilder: (context, index) {
          var chartEntity = charEntities[index];
          return Container(
            margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            height: 100.0,
            child: Row(
              children: <Widget>[
                Image.network(chartEntity.imgUrl, width: 100.0, height: 100.0),
                Expanded(
                    child: Container(
                  alignment: Alignment.centerLeft,
                  color: COLOR_GRAY,
                  padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: getCharItems(chartEntity),
                  ),
                ))
              ],
            ),
          );
        });
  }
}
