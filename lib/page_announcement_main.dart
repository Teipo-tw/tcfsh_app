/*公告頁面主頁*/

import 'package:flutter/material.dart';
import 'package:tcfsh_app/page_test.dart';

class PageAnnouncementMain extends StatelessWidget {
  @override
  var _scrollController = ScrollController();
  double _height = 50;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: Container(
          color: Color(0xecF2F1F6),
          padding: EdgeInsets.only(top: 50),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MaterialButton(
                child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.arrow_back_ios,
                        size: 24,
                      ),
                      Text(
                        "返回",
                        style: TextStyle(
                          color: Color(0xbf000000),
                          fontSize: 18,
                          fontFamily: "Noto Sans CJK TC",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ]),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Text(
                "校園公告",
                style: TextStyle(
                  color: Color(0xbf000000),
                  fontSize: 34,
                  fontFamily: "Noto Sans CJK TC",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView.separated(
          controller: _scrollController,
          itemBuilder: (BuildContext context, int index) {
            return MaterialButton(
              //創建按鈕
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return PageTest();
                }));
              },
              color: Color(0xffbae6ff),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
              child: Column(
                //全部物件垂直排列
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    //日期、狀態
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
                        //狀態：重要
                        width: 38,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xffcb333b),
                        ),
                        alignment: Alignment.center,
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
                      SizedBox(width: 5),
                      Container(
                        //狀態：熱門
                        width: 38,
                        height: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Color(0xffe39900),
                        ),
                        alignment: Alignment.center,
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
                    ],
                  ),
                  SizedBox(height: 5),
                  Container(
                    //分隔線
                    width: 305,
                    height: 1,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 5),
                  SizedBox(
                    //公告標題
                    width: 305,
                    child: Text(
                      "圖書館招募愛心媽媽義工～歡迎報名～$index",
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
          separatorBuilder: (BuildContext context, int index) {
            return Align(
                alignment: Alignment.centerLeft, child: SizedBox(height: 10));
          },
          itemCount: 20),
      floatingActionButton: SizedBox(
        width: 50,
        height: 50,
        child: FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(0.0,
                duration: Duration(milliseconds: 500),
                curve: Curves.decelerate);
          },
          child: Icon(
            Icons.refresh,
            color: Color(0xffbae6ff),
            size: 30,
          ),
        ),
      ),
    );
  }
}
