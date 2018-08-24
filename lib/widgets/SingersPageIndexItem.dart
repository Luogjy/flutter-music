import 'package:flutter_music/baseImport.dart';

class SingersPageIndexItem {
  static get(isActive, text) {
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
