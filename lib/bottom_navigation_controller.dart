import 'package:flutter/material.dart';
import 'package:tcfsh_app/main_page.dart';
import 'package:tcfsh_app/page_announcement_main.dart';
import 'package:tcfsh_app/page_tv_wall_main.dart';

class BottomNavigationController extends StatefulWidget {
  BottomNavigationController({Key key}) : super(key: key);

  @override
  _BottomNavigationControllerState createState() =>
      _BottomNavigationControllerState();
}

class _BottomNavigationControllerState
    extends State<BottomNavigationController> {
  //目前選擇頁索引值
  int _currentIndex = 0; //預設值
  final pages = [PageAnnouncementMain(), MainPage(), PageTVWallMain()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.announcement), label: ('校園公告')),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ('首頁')),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: ('個人資料')),
        ],
        currentIndex: _currentIndex, //目前選擇頁索引值
        fixedColor: Colors.amber, //選擇頁顏色
        onTap: _onItemClick, //BottomNavigationBar 按下處理事件
      ),
    );
  }

  //BottomNavigationBar 按下處理事件，更新設定當下索引值
  void _onItemClick(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
