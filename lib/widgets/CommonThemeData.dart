import 'package:flutter_music/baseImport.dart';

class CommonThemeData {
  static ThemeData get() {
    return ThemeData(
      primarySwatch: MaterialColor(BLACK, <int, Color>{
        50: COLOR_BLACK,
        100: COLOR_BLACK,
        200: COLOR_BLACK,
        300: COLOR_BLACK,
        400: COLOR_BLACK,
        500: COLOR_BLACK, //
        600: COLOR_BLACK,
        700: COLOR_BLACK,
        800: COLOR_BLACK,
        900: COLOR_BLACK,
      }),
    );
  }
}
