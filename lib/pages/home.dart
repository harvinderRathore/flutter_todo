import 'package:flutter/material.dart';

ListView listView;
ListTile todoListTile;

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  List<String> _data = <String>[];

  @override
  Widget build(BuildContext context) {
    _data.add("Hello");
    _data.add("World");
    _data.add("Hi");

    //Widget tobe display
    if (listView == null) {
      listView = ListView.builder(
          //itemCount: _data.length,
          itemBuilder: (BuildContext context, int position) {
        debugPrint("Position is ${position}");
        if (position % 2 == 0) {
          return Divider();
        }
        final int index = position ~/ 2;
        if (index < _data.length ) {
          return ListTile(
            title: Text(
              _data[index],
              textDirection: TextDirection.ltr,
            ),
          );
        }
      });
    }
    return MaterialApp(
      title: "Todo list",
      home: Scaffold(
        body: listView,
      ),
    );
  }
}

void _init() {}
