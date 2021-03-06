import 'package:flutter/material.dart';
import 'main.dart';
import 'package:ssh/ssh.dart';

var client = SSHClient(
  host: "pi@zsheleg",
  port: 22,
  username: "zsheleg",
  passwordOrKey: "2003",
);

class ConnectMenu extends StatelessWidget {
  //can be stateful need to learn more
  const ConnectMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Connect Menu1"),
        ),
        body: Column(children: [
          Center(
            child: ElevatedButton(
              onPressed:
                  null /* () async {
                await client.connect();
              },*/
              ,
              child: const Text('Connect to Raspberry Pi1'),
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
