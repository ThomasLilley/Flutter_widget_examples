import 'package:flutter/material.dart';

class ExpansionPanelExample extends StatefulWidget {
  @override
  _ExpansionPanelExampleState createState() => _ExpansionPanelExampleState();
}

class _ExpansionPanelExampleState extends State<ExpansionPanelExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: <Widget>[
          Card(
            child: ExpansionPanelList.radio(
              animationDuration: Duration(milliseconds: 500),
              children: List.generate(
                9,
                (i) => ExpansionPanelRadio(
                    canTapOnHeader: true,
                    value: UniqueKey(),
                    headerBuilder: (BuildContext context, bool isExpanded) {
                      return ListTile(
                        leading: Icon(
                          Icons.person_pin,
                          color: Colors.blue[(i + 1) * 100],
                        ),
                        title: Text("Expansion Tile ${i + 1}"),
                      );
                    },
                    body: Column(
                      children: List.generate(
                        i + 1,
                        (j) => Container(
                          height: 50,
                          color: Colors.blue[(j + 1) * 100],
                        ),
                      ),
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
