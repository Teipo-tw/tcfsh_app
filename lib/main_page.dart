import 'package:flutter/material.dart';

import 'package:tcfsh_app/page_announcement.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ),*/
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
           mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children:[
            Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    Container(
                        width: 320,
                        height: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25), bottomLeft: Radius.circular(0), bottomRight: Radius.circular(0), ),
                            color: Color(0xff84d5fa),
                        ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children:[
                                Text(
                                    "109年12月4日",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 34,
                                        fontFamily: "Noto Sans CJK TC",
                                        fontWeight: FontWeight.w700,
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(height: 5),
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(topLeft: Radius.circular(0), topRight: Radius.circular(0), bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25), ),
                            color: Color(0xffd7dfe2),
                        ),
                        padding: const EdgeInsets.only(left: 30, right: 10, top: 10, bottom: 20, ),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Text(
                                    "本日事項",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 24,
                                        fontFamily: "Noto Sans CJK TC",
                                        fontWeight: FontWeight.w700,
                                    ),
                                ),
                                SizedBox(height: 5),
                                SizedBox(
                                    width: 280,
                                    child: Text(
                                        " ‧ 廁所綠、美化競賽。\n ‧ 校內國語文競賽。\n ‧ 環境教育。",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 18,
                                            fontFamily: "Noto Sans CJK TC",
                                            fontWeight: FontWeight.w500,
                                        ),
                                    ),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
            SizedBox(height: 20),
            Container(
                width: 300,
                height: 75,
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Container(
                            width: 300,
                            height: 75,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xffd8dfe3),
                            ),
                            padding: const EdgeInsets.symmetric(horizontal: 85, vertical: 20, ),
                            child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children:[
                                    Text(
                                        "􀅴 學生資訊",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 24,
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 20),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    Container(
                        width: 145,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffd8dfe3),
                        ),
                        padding: const EdgeInsets.only(left: 15, top: 10, ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Text(
                                    "校園公告",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: "Noto Sans CJK TC",
                                        fontWeight: FontWeight.w500,
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(width: 10),
                    Container(
                        width: 145,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffd8dfe3),
                        ),
                        padding: const EdgeInsets.only(left: 15, top: 10, ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Text(
                                    "數位校園",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: "Noto Sans CJK TC",
                                        fontWeight: FontWeight.w500,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
            SizedBox(height: 20),
            Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children:[
                    Container(
                        width: 145,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffd8dfe3),
                        ),
                        padding: const EdgeInsets.only(left: 15, top: 10, ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Text(
                                    "電視牆公告",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: "Noto Sans CJK TC",
                                        fontWeight: FontWeight.w500,
                                    ),
                                ),
                            ],
                        ),
                    ),
                    SizedBox(width: 10),
                    Container(
                        width: 145,
                        height: 90,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xffd8dfe3),
                        ),
                        padding: const EdgeInsets.only(left: 15, top: 10, ),
                        child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:[
                                Text(
                                    "閱覽室\n選位系統",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 18,
                                        fontFamily: "Noto Sans CJK TC",
                                        fontWeight: FontWeight.w500,
                                    ),
                                ),
                            ],
                        ),
                    ),
                ],
            ),
        ],

        ),
      ),
      /*floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), */
    );
  }
}