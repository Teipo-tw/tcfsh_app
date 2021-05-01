/*公告頁面主頁*/

import 'package:flutter/material.dart';
import 'package:tcfsh_app/page_test.dart';

class PageAnnouncementMain extends StatefulWidget {
  @override
  _PageAnnouncementMainState createState() => _PageAnnouncementMainState();
}

class _PageAnnouncementMainState extends State<PageAnnouncementMain> {
  ScrollController _scrollController = ScrollController();
  double _titleFontSize = 34;
  //bool bar = false;

  @override
  void initState() {
    //監聽滾動事件
    _scrollController.addListener(() {
      print(_scrollController.offset); //列印滾動位置
    });
  }

  @override
  void dispose() {
    //避免記憶體洩露，呼叫_scrollController.dispose
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: //!bar? false :
          PreferredSize(
        preferredSize: Size.fromHeight(1000),
        child: Material(
          elevation: 5,
          child: Container(
            color: Color(0xecF2F1F6),
            padding: EdgeInsets.only(
              top: 30,
              left: 10,
              bottom: 10,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(
                  //返回鍵
                  child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.blue,
                          size: 24,
                        ),
                        Text(
                          "返回",
                          style: TextStyle(
                            color: Colors.blue,
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
                Row(
                  //大標
                  children: [
                    SizedBox(width: 15),
                    Text(
                      "校園公告",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 34,
                        fontFamily: "Noto Sans CJK TC",
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.separated(
        controller: _scrollController,
        padding: EdgeInsets.only(top: 15),
        itemBuilder: (BuildContext context, int index) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialButton(
                //公告按鈕
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
                  horizontal: 20,
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
              ),
            ],
          );
        },
        itemCount: 50,
        separatorBuilder: (BuildContext context, int index) {
          return Align(
              alignment: Alignment.center, child: SizedBox(height: 10));
        },
      ),
      floatingActionButton: SizedBox(
        width: 50,
        height: 50,
        child: FloatingActionButton(
          onPressed: () {
            _scrollController.animateTo(0.0,
                duration: Duration(milliseconds: 500),
                curve: Curves.easeOutQuart);
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
