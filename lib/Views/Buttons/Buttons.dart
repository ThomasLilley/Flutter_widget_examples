import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_examples/Objects/ListItem.dart';

class Buttons extends StatefulWidget {
  Buttons({Key key}) : super(key: key);

  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  List<ListItem> _listItems = [
    ListItem(
      name: "1",
      icon: Icon(Icons.edit_attributes),
      route: null,
    ),
    ListItem(
      name: "2",
      icon: Icon(Icons.edit_attributes),
      route: null,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Examples'),
      ),
      body: Center(
          child: ListView.builder(
              itemCount: _listItems.length,
              itemBuilder: (BuildContext context, int i) {
                return Card(
                  child: ListTile(
                    leading: _listItems[i].icon,
                    title: Text(_listItems[i].name),
                    onTap: () =>  Get.to(_listItems[i].route, transition: Transition.native),
                  ),
                );
              })),
    );
  }
}
