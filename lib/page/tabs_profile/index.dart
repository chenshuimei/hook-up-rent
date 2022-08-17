/*
 * @Description: 这是***页面
 * @Date: 2022-08-15 14:27:05
 * @Author: shuimei
 * @LastEditTime: 2022-08-15 16:57:14
 */
import 'package:flutter/material.dart';

import 'header.dart';

class TabsProfile extends StatelessWidget {
  const TabsProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('我的'), actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed('settings');
            },
            icon: Icon(Icons.settings))
      ]),
      body: ListView(
        children: [Header(), Text('这里是内瓤')],
      ),
    );
  }
}
