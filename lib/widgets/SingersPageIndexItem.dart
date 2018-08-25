import 'package:flutter_music/baseImport.dart';

class SingersPageIndexItem extends StatefulWidget {
  var isActive = false;
  var text = '';

  SingersPageIndexItem(isActive, text) {
    this.isActive = isActive;
    this.text = text;
  }

  @override
  State<StatefulWidget> createState() {
    return MyState(isActive, text);
  }
}

class MyState extends State<SingersPageIndexItem> {
  var isActive = false;
  var text = '';

  MyState(isActive, text) {
    this.isActive = isActive;
    this.text = text;
  }

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
