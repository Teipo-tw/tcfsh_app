import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart' show parse;
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

//import 'package:tcfsh_app/page_test.dart';
//import 'package:flutter_linkify/flutter_linkify.dart';

class ListItem {
  final String title;
  final String url;
  ListItem(this.title, this.url);
}

class ListitemWidget extends StatelessWidget {
  final ListItem listItem;

  ListitemWidget(
    this.listItem,
  );

  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: 305,
      height: 25,
      child: new Text(
        listItem.title,
        style: TextStyle(
          color: Color(0xbf000000),
          fontSize: 15,
          fontFamily: "Noto Sans CJK TC",
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}

class Listitemlink extends StatelessWidget {
  final String listitemlink;
  final String title;

  //String webpagetext;
  Listitemlink({Key key, @required this.listitemlink, this.title})
      : super(key: key);
  /*void getWebpagetext() async {
    var newurl = Uri.parse('$url');
    var response = await http.get(newurl);
    if (response.statusCode == 200) {
      var res = parse(response.body);
      var table = res.querySelector('article');
      var announcement = table.children[1].children;
      for (var ele in announcement) {
        var anchor = ele.children[1].querySelector('div');
        var webtext = anchor.text;
        //webpagetext = webtext;
        print(url);
      }
    }
  }*/

  @override
  Widget build(BuildContext context) {
    return new WebviewScaffold(
      url: listitemlink,
      appBar: AppBar(
        title: Text(title),
      ),

      withZoom: true,
      // 允许网页缩放
      withLocalStorage: true,
      // 允许LocalStorage
      withJavascript: true, // 允许执行js代码
    );
  }
}

class PageTVWallMain extends StatefulWidget {
  PageTVWallMain({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PageTVWallMainState createState() => _PageTVWallMainState();
}

class _PageTVWallMainState extends State<PageTVWallMain> {
  List<dynamic> data = [];
  final List<ListItem> listdata = [];
  final List<ListItem> listdate = [];
  final List<ListItem> listurl = [];
  void getData() async {
    var url = Uri.parse('https://w2.tcfsh.ml/zh_tw/news/announcement');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var res = parse(response.body);
      var table = res.querySelector('table');
      var announcement = table.children[1].children;
      for (var ele in announcement) {
        var date = ele.children[0].text;
        var status = ele.children[1].children[0].text;
        var anchor = ele.children[1].querySelector('a');
        var url = anchor.attributes['href'];
        var title = anchor.text;
        data.add(date);
        //data.add(anchor);
        data.add('https://w2.tcfsh.ml/$url');
        if (title.length > 19) {
          data.add(title.substring(0, 18));
        } else {
          data.add(title);
        }
        print(date);
        print(title);
        print('https://w2.tcfsh.ml/$url');
        print('\n');
        print(status);
      }
      for (int i = 0; i < data.length; i++) {
        if (i % 3 == 0) {
          listdate.add(ListItem('${data[i]}', '${data[i + 2]}'));
        } else if (i % 3 == 2) {
          listdata.add(ListItem('${data[i]}', '${data[i - 1]}'));
        } else {
          listurl.add(ListItem('${data[i]}', '${data[i]}'));
        }
      }
    }
    setState(() {
      data = data;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("電視牆"),
        ),
        body: new ListView.builder(
          shrinkWrap: true,
          itemExtent: 91,
          itemCount: listdata.length,
          padding: EdgeInsets.all(20.10),
          itemBuilder: (BuildContext context, int index) {
            return new InkWell(
              child: Card(
                elevation: 7, //阴影
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Color(0xffbae6ff), //颜色
                margin: EdgeInsets.all(10), //margin
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 23.9,
                          ),
                          ListitemWidget(listdate[index]),
                          SizedBox(
                            width: 2,
                          ),
                        ],
                      ),
                      Divider(
                        height: 1.0,
                        indent: 20,
                        endIndent: 20,
                        color: Color(0xFFFFFFFF),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 23.9),
                          ListitemWidget(listdata[index]),
                        ],
                      )
                    ]),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new Listitemlink(
                              listitemlink: (listdata[index].url),
                              title: (listdata[index].title),
                            )));
              },
            );
          },
        ));
  }
}
