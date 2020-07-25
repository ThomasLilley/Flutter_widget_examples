import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_examples/Views/Lists/lists.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Widget Examples',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainMenu(),
    );
  }
}

class MainMenu extends StatefulWidget {
  MainMenu({Key key}) : super(key: key);

  @override
  _MainMenuState createState() => _MainMenuState();
}

class ListItem{

  ListItem({@required this.name, @required this.icon, @required this.route});

  String name;
  Widget icon;
  Widget route;
}

class _MainMenuState extends State<MainMenu> {

  List<ListItem> _listItems = [
    ListItem(
      name: "Lists",
      icon: Icon(Icons.list),
      route: Lists(),
    ),
    ListItem(
      name: "Buttons",
      icon: Icon(Icons.edit_attributes),
      route: Lists(),
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
                //return _listContents[index];
              })),
    );
  }
}
