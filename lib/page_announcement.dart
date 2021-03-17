import 'package:flutter/material.dart';


class PageAnnouncement extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: ListView.separated(
          itemBuilder: (BuildContext context, int index){
            return Container(
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Color(0xffbae6ff),
    ),
    padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10, ),
    child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children:[
            Container(
                color: Color(0x00ffffff),
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children:[
                        Text(
                            "2021-02-09",
                            style: TextStyle(
                                color: Color(0xbf000000),
                                fontSize: 15,
                                fontFamily: "Noto Sans CJK TC",
                                fontWeight: FontWeight.w500,
                            ),
                        ),
                        SizedBox(width: 5),
                        Container(
                            width: 38,
                            height: 17,
                            color: Color(0x00ffffff),
                            child: Stack(
                                children:[
                                    Container(
                                        width: 38,
                                        height: 17,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(3),
                                            color: Color(0xffcb333b),
                                        ),
                                    ),
                                    Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                                "重要",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily: "Noto Sans CJK TC",
                                                    fontWeight: FontWeight.w500,
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                        SizedBox(width: 5),
                        Container(
                            width: 38,
                            height: 17,
                            color: Color(0x00ffffff),
                            child: Stack(
                                children:[
                                    Container(
                                        width: 38,
                                        height: 17,
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(3),
                                            color: Color(0xffe39900),
                                        ),
                                    ),
                                    Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                                "熱門",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontFamily: "Noto Sans CJK TC",
                                                    fontWeight: FontWeight.w500,
                                                ),
                                            ),
                                        ),
                                    ),
                                ],
                            ),
                        ),
                    ],
                ),
            ),
            SizedBox(height: 5),
            Container(
                width: 305,
                height: 1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                ),
            ),
            SizedBox(height: 5),
            SizedBox(
                width: 305,
                child: Text(
                    "圖書館招募愛心媽媽義工～歡迎報名～",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontFamily: "Noto Sans CJK TC",
                        fontWeight: FontWeight.w500,
                    ),
                ),
            ),
        ],
    ),
);
          },
          separatorBuilder: (BuildContext context, int index){
            return Align(
            alignment : Alignment.centerLeft,
              child: FlutterLogo(),
            );
          },
          itemCount: 20
        )
    );
  }
}