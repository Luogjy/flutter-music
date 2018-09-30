import 'package:flutter_music/baseImport.dart';

/// 加载更多的控件
class LoadWidget extends StatefulWidget {
  String _text = '加载中...';

  LoadWidget(this._text);

  @override
  State<StatefulWidget> createState() {
    return LoadWidgetState(_text);
  }
}

class LoadWidgetState extends State<LoadWidget> {
  String _text = '加载中...';

  LoadWidgetState(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Center(
        child: Text(
          _text,
          style: TextStyle(color: COLOR_WHITE),
        ),
      ),
    );
  }
}
