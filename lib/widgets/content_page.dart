/*
 * @Description: 这是***页面
 * @Date: 2022-07-28 16:28:29
 * @Author: shuimei
 * @LastEditTime: 2022-08-01 10:58:12
 */
import 'package:flutter/material.dart';
import 'package:hook_up_rent/routers.dart';

class PageContent extends StatelessWidget {
  final String name;
  const PageContent({Key? key, required this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('当前页面是：$name'),
      ),
      body: ListView(
        children: <Widget>[
          TextButton(
              child: Text(Routes.home),
              onPressed: () {
                Navigator.pushNamed(context, Routes.home);
              }),
          TextButton(
              child: Text(Routes.login),
              onPressed: () {
                Navigator.pushNamed(context, Routes.login);
              }),
          TextButton(
              child: Text('不存在的页面 '),
              onPressed: () {
                Navigator.pushNamed(context, '/hhhh');
              }),
          TextButton(
              child: Text('房屋下详情页，id222 '),
              onPressed: () {
                Navigator.pushNamed(context, '/room/222');
              }),
        ],
      ),
    );
  }
}
