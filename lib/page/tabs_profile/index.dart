/*
 * @Description: 这是***页面
 * @Date: 2022-08-15 14:27:05
 * @Author: shuimei
 * @LastEditTime: 2022-08-18 17:01:42
 */
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/info/index.dart';

import 'advertisement.dart';
import 'function_buttion.dart';
import 'header.dart';

class TabsProfile extends StatelessWidget {
  const TabsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0, title: Text('我的'), actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('setting');
            },
            icon: Icon(Icons.settings))
      ]),
      body: ListView(
        children: [
          Header(),
          FunctionButton(),
          Advertisement(),
          Info(isShowTitle: true),
          Padding(padding: EdgeInsets.only(bottom: 30.0))
        ],
      ),
    );
  }
}
