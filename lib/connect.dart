import 'package:flutter/material.dart';
import 'main.dart';

class ConnectMenu extends StatelessWidget {
  //can be stateful need to learn more
  const ConnectMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Connect Menu"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WireColur()),
            );
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
