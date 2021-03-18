import 'package:flutter/material.dart';
import 'package:tcfsh_app/main_page.dart';
import 'package:tcfsh_app/page_announcement_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: MyHomePage(title: 'TCFSH APP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(widget.title),
      ),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              'You have pushed the button this many times:',
            ),
            new Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            MaterialButton(
              color: Colors.red,
              child: Text("主頁"),
              textColor: Colors.blue,
              onPressed: () {
                //导航到新路由   
                Navigator.push( context,
                MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              },
            ),
            MaterialButton(
              color:Colors.yellow[300],
              onPressed: () async {
                var result = await Navigator.push(context,
                  MaterialPageRoute(builder: (context) {
                    return PageAnnouncementMain();
                  },),
                );
              //输出`TipRoute`路由返回结果
                print("路由返回值: $result");
              },
              child: Text("公告頁面"),
            ),
            
          ],
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  
}

