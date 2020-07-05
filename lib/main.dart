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

class _MainMenuState extends State<MainMenu> {
  List<Widget> _listContents = [
    Card(
      child: ListTile(
        leading: Icon(Icons.list),
        title: Text("Lists"),
        onTap: () =>
            Get.to(Lists(), transition: Transition.native),
      ),
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
              itemCount: _listContents.length,
              itemBuilder: (BuildContext context, int index) {
                return _listContents[index];
              })),
    );
  }
}
