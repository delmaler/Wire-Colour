import 'package:flutter/material.dart';
import 'package:wire_colour/history.dart';
import 'connect.dart';

void main() => runApp(MaterialApp(
      title: "App",
      home: WireColur(),
    ));

class WireColur extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Wire Colour'),
        ),
        body: Column(children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: ElevatedButton(
                  child: Text('connect'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ConnectMenu()),
                    );
                  }),
            ),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 16.0),
              child: ElevatedButton(
                  child: Text('history'),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HistoryMenu()),
                    );
                  }),
            ),
          ),
        ]));
  }
}
