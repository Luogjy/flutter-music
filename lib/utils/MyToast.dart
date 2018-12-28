import 'AppColors.dart';

import 'package:fluttertoast/fluttertoast.dart';

class MyToast {
  static show(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        backgroundColor: COLOR_RED,
        textColor: COLOR_WHITE);
  }
}
