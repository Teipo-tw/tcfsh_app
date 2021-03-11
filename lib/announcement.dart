import 'package:flutter/material.dart';
import 'package:'

class announcement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New route"),
      ),
      body: Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            Text("This is new route"),
            MaterialButton(
              color:Colors.yellow[300],
              onPressed: () async {
              //输出`TipRoute`路由返回结果
                print("路由返回值: $result");
              },
              child: Text("打开提示页"),
            ),
          ]
        )
      ),
    );
  }
}