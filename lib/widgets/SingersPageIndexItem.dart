import 'package:flutter_music/baseImport.dart';
/// 歌手页右侧索引条
class SingersPageIndexItem extends StatefulWidget {
  bool isActive = false;
  String text = '';

  SingersPageIndexItem(this.isActive, this.text);

  @override
  State<StatefulWidget> createState() {
    return MyState(isActive, text);
  }
}

class MyState extends State<SingersPageIndexItem> {
  bool isActive = false;
  String text = '';

  MyState(this.isActive, this.text);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text(
        text,
        style: TextStyle(
            fontSize: 12.0,
            color: isActive
                ? COLOR_YELLOW
                : COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE),
        textAlign: TextAlign.center,
      ),
      width: 18.0,
      height: 18.0,
    );
  }
}
