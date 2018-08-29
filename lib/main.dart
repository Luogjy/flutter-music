import 'package:flutter_music/baseImport.dart';
import './widgets/HomeTabBar.dart';
import './pages/RecommendPage.dart';
import './pages/SingersPage.dart';
import './pages/ChartsPage.dart';
import './pages/SearchPage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: CommonThemeData.get(),
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

//new Text('Flutter Music')
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: COLOR_BLACK,
//    如果 AppBar 在不定义 leading 和 action 时， title 会自动占据这两个参数的空间，并且在两侧会各留一个 16.0 的边距。
//        https://zhuanlan.zhihu.com/p/37697590
        appBar: AppBar(
          elevation: 0.0,
          title: Stack(
            children: <Widget>[
              // Container在没有子节点（children）的时候，会试图去变得足够大。
              // https://github.com/yang7229693/flutter-study/blob/master/post/4.%20Flutter%20%E5%B8%83%E5%B1%80%EF%BC%88%E4%B8%80%EF%BC%89-%20Container%E8%AF%A6%E8%A7%A3.md
              Container(),
              Container(
                child: Text(
                  'Flutter Music',
                  style: TextStyle(color: COLOR_YELLOW),
                ),
                alignment: Alignment.center,
              ),
              Container(
//              带子节点的Container，会根据子节点尺寸调节自身尺寸，但是Container构造器中如果包含了width、height以及constraints，则会按照构造器中的参数来进行尺寸的调节。
                  child:
                      Image.asset('images/user.png', width: 30.0, height: 30.0),
                  alignment: Alignment.centerRight)
            ],
          ),
          // TabBar外层要嵌套一层 DefaultTabController ，用来说明 Tab 的个数
          // https://zhuanlan.zhihu.com/p/37697590
          bottom: HomeTabBar.get(),
        ),
        body: TabBarView(
          children: <Widget>[
            RecommendPage(),
            SingersPage(),
            ChartsPage(),
            SearchPage()
          ],
        ),
      ),
    );
  }
}
