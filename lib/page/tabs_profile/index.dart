/*
 * @Description: 这是***页面
 * @Date: 2022-08-15 14:27:05
 * @Author: shuimei
 * @LastEditTime: 2022-08-18 15:03:41
 */
import 'package:flutter/material.dart';

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
              Navigator.of(context).pushNamed('settings');
            },
            icon: Icon(Icons.settings))
      ]),
      body: ListView(
        children: [
          Header(),
          FunctionButton(),
        ],
      ),
    );
  }
}
