import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entitesImport.dart';

/// 排行页
class ChartsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<ChartsPage> with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  List<Top> topList = [];

  MyState() {
    _getCharts();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
        itemCount: topList.length,
        itemBuilder: (context, index) {
          var top = topList[index];
          return GestureDetector(
              onTap: () {
                // todo 点击监听
                print(top);
              },
              child: Container(
                margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                height: 100.0,
                child: Row(
                  children: <Widget>[
                    Image.network(top.picUrl, width: 100.0, height: 100.0),
                    Expanded(
                        child: Container(
                      alignment: Alignment.centerLeft,
                      color: COLOR_GRAY,
                      padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: getCharItems(top),
                      ),
                    ))
                  ],
                ),
              ));
        });
  }

  List<Widget> getCharItems(Top top) {
    var list = <Widget>[];

    for (var i = 0; i < top.songList.length; i++) {
      list.add(Text(
        '${i + 1} ${top.songList[i].singername}-${top.songList[i].songname}',
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
            color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_THREE, fontSize: 12.0),
      ));
    }
    return list;
  }

  _getCharts() async {
    Response response = await Api.getCharts();
    if (response == null) {
      MyToast.show('排行榜请求出错');
    } else {
      ChartsResp resp = ChartsResp.fromJson(json.decode(response.data));
      if (Api.isOk(resp.code)) {
        setState(() {
          topList = resp.data.topList;
        });
      }
    }
  }
}
