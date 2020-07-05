import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'expansionPanelExample.dart';
import 'expansionTileExample.dart';

class Lists extends StatefulWidget {
    Lists({Key key}) : super(key: key);

    @override
    _ListsState createState() => _ListsState();
}

class _ListsState extends State<Lists> {
    List<Widget> _listContents = [
        Card(
            child: ListTile(
                title: Text("Expansion Tile"),
                onTap: () =>
                    Get.to(ExpansionTileExample(), transition: Transition.native),
            ),
        ),
        Card(
            child: ListTile(
                title: Text("Expansion Panel"),
                onTap: () =>
                    Get.to(ExpansionPanelExample(), transition: Transition.native),
            ),
        )
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
                    itemBuilder: (BuildContext context, int index){
                        return _listContents[index];
                    })
            ),
        );
    }
}
