/*
 * @Description: 这是***页面
 * @Date: 2022-08-01 00:04:50
 * @Author: shuimei
 * @LastEditTime: 2022-08-01 08:14:46
 */
import 'package:flutter/material.dart';

class RoomDetailPage extends StatelessWidget {
  final String roomId;
  const RoomDetailPage({Key? key, required this.roomId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('roomid: $roomId'),
      ),
    );
  }
}
