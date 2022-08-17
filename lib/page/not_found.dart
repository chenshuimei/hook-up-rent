/*
 * @Description: 这是***页面
 * @Date: 2022-07-31 13:13:04
 * @Author: shuimei
 * @LastEditTime: 2022-07-31 13:16:51
 */
import 'package:flutter/material.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404'),
      ),
      body: Center(
        child: Text('你访问的页面不存在'),
      ),
    );
  }
}
