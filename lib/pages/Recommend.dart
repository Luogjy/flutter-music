import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/RecommendSwiper.dart';

class Recommend extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<Recommend> {

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RecommendSwiper.get()
      ],
    );
  }
}
