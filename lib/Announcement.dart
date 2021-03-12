import 'package:flutter/material.dart';

class Announcement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("This is new route"),
            MaterialButton(
              color: Colors.yellow[300],
              onPressed: () async {},
              child: Text("打开提示页"),
            ),
          ])),
    );
  }
}
