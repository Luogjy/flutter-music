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
    return Scaffold(
      backgroundColor: COLOR_BLACK,
      // 主页面
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Container(
            height: 40.0,
            child: Stack(
              children: <Widget>[
                Container(
                  child: Text(
                    'Flutter Music',
                    style: TextStyle(color: COLOR_YELLOW, fontSize: 17.0),
                  ),
                  alignment: Alignment.center,
                ),
                Container(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Image.asset('images/user.png',
                        width: 20.0, height: 20.0),
                    alignment: Alignment.centerRight)
              ],
            ),
          ),
          Container(
            height: MyUtils.getSafeAreaHeight(context) - 40,
            child: PageView(
              controller: PageController(
                keepPage: true,
              ),
              children: <Widget>[
                RecommendPage(),
                SingersPage(),
                ChartsPage(),
                SearchPage()
              ],
            ),
          )
        ],
      )),
    );
  }
}
