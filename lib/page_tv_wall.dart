import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PageTVWall extends StatefulWidget {
  PageTVWall({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageTVWallState createState() => _PageTVWallState();
}

class _PageTVWallState extends State<PageTVWall> {
  String data = "321";

  void getData() async {
    var url = Uri.parse('https://tcirc.tw/');
    setState(() {
      data = "12111";
    });
    var response = await http.get(url);

    var res = response.body;
    //print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');
    setState(() {
      data = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("123"),
        ),
        body: new Center(
          child: new Column(
            children: [
              Text("$data"),
              IconButton(icon: Icon(Icons.home), onPressed: getData),
            ],
          ),
        ));
  }
}
