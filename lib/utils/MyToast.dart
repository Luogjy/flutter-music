import 'package:fluttertoast/fluttertoast.dart';

class MyToast {
  static show(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIos: 1,
        bgcolor: "#CC0000",
        textcolor: '#ffffff');
  }
}
