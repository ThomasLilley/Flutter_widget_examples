import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_examples/Views/Lists/lists.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Widget Examples',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
