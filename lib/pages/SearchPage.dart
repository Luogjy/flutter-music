import 'package:flutter_music/baseImport.dart';
import 'package:flutter_music/widgets/SearchResultItem.dart';
import 'package:flutter_music/widgets/SearchHotKeyWord.dart';
import 'package:flutter_music/widgets/SearchTextField.dart';

class SearchPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SearchTextField(),
        Expanded(
          child: IndexedStack(
            index: 0,
            children: <Widget>[
              SearchHotKeyWord.get(),
              SearchResultItem.get(),
            ], //
          ),
        )
        //
      ],
    );
  }
}
