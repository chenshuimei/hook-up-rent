/*
 * @Description: 这是***页面
 * @Date: 2022-08-05 16:20:08
 * @Author: shuimei
 * @LastEditTime: 2022-08-15 11:51:09
 */
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/info/index.dart';
import 'package:hook_up_rent/widgets/search_bar/index.dart';

class TabInfo extends StatefulWidget {
  const TabInfo({Key? key}) : super(key: key);

  @override
  State<TabInfo> createState() => _TabInfoState();
}

class _TabInfoState extends State<TabInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          Padding(padding: EdgeInsets.only(bottom: 10.0)),
          Info(),
          Info(),
          Info(),
          Info()
        ],
      ),
    );
  }
}
