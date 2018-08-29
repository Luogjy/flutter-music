import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entitesImport.dart';
import 'package:flutter_music/widgets/RecommendSwiper.dart';
import 'package:flutter_music/widgets/HotMusicItem.dart';

class RecommendPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<RecommendPage> {
  MyState() {
    getData();
  }

  List<HotMusicItemEntity> hotMusicItemEntities = [];

  getData() async {
    Response response = await Api.getHotMusicList();
    if (response == null) {
      MyToast.show('热门推荐歌单请求出错');
    } else {
      HotMusicResp resp = HotMusicResp.fromJson(json.decode(response.data));
      if (Api.isOk(resp.code)) {
        setState(() {
          hotMusicItemEntities = resp.data.list;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: hotMusicItemEntities.length + 2,
        itemBuilder: (context, index) {
          // 轮播图
          if (index == 0) {
            return RecommendSwiper();
          }
          // 头“热门歌单推荐”
          else if (index == 1) {
            return Container(
              height: 65.0,
              alignment: Alignment.center,
              child: Text('热门歌单推荐',
                  style: TextStyle(color: COLOR_YELLOW, fontSize: 14.0)),
            );
          }
          // 热门歌单列表
          else {
            return HotMusicItem(hotMusicItemEntities[index - 2]);
          }
        });
  }
}
