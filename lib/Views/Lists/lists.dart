import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_examples/Objects/ListItem.dart';
import 'package:widget_examples/Views/Lists/expansionPanelExample.dart';
import 'package:widget_examples/Views/Lists/expansionTileExample.dart';

class Lists extends StatefulWidget {
  Lists({Key key}) : super(key: key);

  @override
  _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {

  List<ListItem> _listItems = [
      ListItem(
          name: "Expansion Tile",
          icon: Icon(Icons.list),
          route: ExpansionTileExample(),
      ),
      ListItem(
          name: "Expansion Panel",
          icon: Icon(Icons.list),
          route: ExpansionPanelExample(),
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
