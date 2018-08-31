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

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: COLOR_BLACK,
        appBar: AppBar(
          elevation: 0.0,
          // 标题栏
          title: Stack(
            children: <Widget>[
              Container(
                child: Text(
                  'Flutter Music',
                  style: TextStyle(color: COLOR_YELLOW),
                ),
                alignment: Alignment.center,
              ),
              Container(
                  child:
                      Image.asset('images/user.png', width: 30.0, height: 30.0),
                  alignment: Alignment.centerRight)
            ],
          ),
          // 主页面导航栏
          bottom: HomeTabBar.get(),
        ),
        // 主页面
        body: Container(
            margin: EdgeInsets.only(top: 5.0),
            child: TabBarView(
              children: <Widget>[
                RecommendPage(),
                SingersPage(),
                ChartsPage(),
                SearchPage()
              ],
            )),
      ),
    );
  }
}
