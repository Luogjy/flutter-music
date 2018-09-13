import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/entitesImport.dart' show HotMusicItemEntity;

class MusicListPage extends StatefulWidget {
  HotMusicItemEntity hotMusicItemEntity;

  MusicListPage(this.hotMusicItemEntity);

  @override
  State<StatefulWidget> createState() {
    return MyState(hotMusicItemEntity);
  }
}

class MyState extends State<MusicListPage> with TickerProviderStateMixin {
  HotMusicItemEntity hotMusicItemEntity;

  MyState(this.hotMusicItemEntity);

  final List<ListItem> listData = [];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);

    for (int i = 0; i < 20; i++) {
      listData.add(new ListItem("我是测试标题$i", Icons.cake));
    }
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 262.5,
              title: Container(
                child: Text(
                  hotMusicItemEntity.dissname,
                  style: TextStyle(),
                ),
              ),
              pinned: true, // 固定标题栏
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text(hotMusicItemEntity.dissname,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16.0,
                      )),
                  background: Image.network(
                    hotMusicItemEntity.imgurl,
                    fit: BoxFit.cover,
                  )),
            ),
            SliverPersistentHeader(
                delegate: _SliverAppBarDelegate(
              TabBar(
                controller: new TabController(length: 2, vsync: this),
                labelColor: Colors.black87,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(icon: Icon(Icons.security), text: "security"),
                  Tab(icon: Icon(Icons.cake), text: "cake"),
                ],
              ),
            ))
          ];
        },
        body: Center(
          child: new ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return new ListItemWidget(listData[index]);
            },
            itemCount: listData.length,
          ),
        ),
      ),
    );
  }
}

class ListItem {
  final String title;
  final IconData iconData;

  ListItem(this.title, this.iconData);
}

class ListItemWidget extends StatelessWidget {
  final ListItem listItem;

  ListItemWidget(this.listItem);

  @override
  Widget build(BuildContext context) {
    return new InkWell(
      child: new ListTile(
        leading: new Icon(listItem.iconData),
        title: new Text(listItem.title),
      ),
      onTap: () {},
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;

  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
    );
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
