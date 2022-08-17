/*
 * @Description: 这是***页面
 * @Date: 2022-08-15 15:34:42
 * @Author: shuimei
 * @LastEditTime: 2022-08-15 23:58:30
 */
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/tabs_index/index_recommed_item.dart';

var loginRegisterStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      height: 95.0,
      child: Row(
        children: [
          Container(
            height: 65.0,
            width: 65.5,
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbgbqv2nj30i20i2wen.jpg'),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Row(
                children: [
                  // 登录
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('login');
                    },
                    child: Text(
                      '登录',
                      style: loginRegisterStyle,
                    ),
                  ),
                  Text(
                    '/',
                    style: loginRegisterStyle,
                  ),
                  // 注册
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed('register');
                    },
                    child: Text(
                      '注册',
                      style: loginRegisterStyle,
                    ),
                  ),
                ],
              ),
              Text('登陆后可体验更多', style: TextStyle(color: Colors.white))
            ],
          ),
        ],
      ),
    );
  }
}
