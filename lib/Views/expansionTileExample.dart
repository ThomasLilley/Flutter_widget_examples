import 'package:flutter/material.dart';

class ExpansionTileExample extends StatefulWidget {
  @override
  _ExpansionTileExampleState createState() => _ExpansionTileExampleState();
}

class _ExpansionTileExampleState extends State<ExpansionTileExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: 9,
        itemBuilder: (BuildContext context, int i) {
          return Card(
            child: ExpansionTile(
              leading: Icon(
                Icons.person_pin,
                color: Colors.blue[(i + 1) * 100],
              ),
              title: Text("Expansion Tile ${i + 1}"),
              children: List.generate(
                i + 1,
                (j) => Container(
                  height: 50,
                  color: Colors.blue[(j + 1) * 100],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
