/*
 * @Description: 这是首页页面
 * @Date: 2022-07-28 18:10:35
 * @Author: shuimei
 * @LastEditTime: 2022-08-15 15:09:06
 */
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/tabs_index/index.dart';
import 'package:hook_up_rent/page/tabs_info/index.dart';
import 'package:hook_up_rent/page/tabs_profile/index.dart';
import 'package:hook_up_rent/page/tabs_search/index.dart';
import 'package:hook_up_rent/widgets/content_page.dart';

List<Widget> tabViewList = [
  TabIndex(),
  TabSearch(),
  // PageContent(name: '搜索'),
  // PageContent(name: '资讯'),
  TabInfo(),
  // PageContent(name: '我的'),
  TabsProfile()
];

List<BottomNavigationBarItem> barItemList = [
// bottomNavigationBarItem(title:'首页')
  BottomNavigationBarItem(label: '首页', icon: Icon(Icons.home)),
  BottomNavigationBarItem(label: '搜索', icon: Icon(Icons.search)),
  BottomNavigationBarItem(label: '资讯', icon: Icon(Icons.info)),
  BottomNavigationBarItem(label: '我的', icon: Icon(Icons.account_circle)),
];

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabViewList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: barItemList,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.green,
        onTap: _onItemTapped,
      ),
    );
  }
}
