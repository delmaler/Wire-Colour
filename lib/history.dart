import 'package:flutter/material.dart';
import 'main.dart';

class HistoryMenu extends StatelessWidget {
  //can be stateful need to learn more
  const HistoryMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("History menu"),
        ),
        body: Column(children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WireColur()),
                );
              },
              child: const Text('Last Colur'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WireColur()),
                );
              },
              child: const Text('Go back!'),
            ),
          ),
        ]));
  }
}
