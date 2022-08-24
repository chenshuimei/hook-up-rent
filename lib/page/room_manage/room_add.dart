/*
 * @Description: 这是***页面
 * @Date: 2022-08-24 16:37:09
 * @Author: shuimei
 * @LastEditTime: 2022-08-24 16:40:45
 */
import 'package:flutter/material.dart';

class RoomAddPage extends StatelessWidget {
  const RoomAddPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('添加房源'),
        ),
        body: Container(
          child: Text('添加房源页面'),
        ));
  }
}
