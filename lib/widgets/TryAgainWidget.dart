import 'package:flutter_music/baseImport.dart';

/// 点击重试按钮
class TryAgainWidget extends StatefulWidget {
  Function onClick;

  TryAgainWidget(this.onClick);

  @override
  State<StatefulWidget> createState() {
    return TryAgainWidgetState(onClick);
  }
}

class TryAgainWidgetState extends State<TryAgainWidget> {
  Function onClick;

  TryAgainWidgetState(this.onClick);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (onClick is Function) {
          onClick();
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: 80.0,
        height: 40.0,
        child: Text(
          '点击重试',
          style: TextStyle(color: COLOR_YELLOW),
        ),
      ),
    );
  }
}
