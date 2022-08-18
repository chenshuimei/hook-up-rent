/*
 * @Description: 这是***页面
 * @Date: 2022-08-15 15:34:42
 * @Author: shuimei
 * @LastEditTime: 2022-08-18 14:33:19
 */
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/tabs_index/index_recommed_item.dart';

var loginRegisterStyle = TextStyle(fontSize: 20.0, color: Colors.white);

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  // 未登录
  Widget _NotLoginBuilder(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      height: 95.0,
      padding: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 20.0),
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

  // 已登录
  Widget _LoginBuilder(BuildContext context) {
    String userName = '陈水妹';
    String avterImag =
        'https://tva1.sinaimg.cn/large/006y8mN6ly1g6tbnovh8jj30hr0hrq3l.jpg';
    return Container(
      decoration: BoxDecoration(color: Colors.green),
      height: 95.0,
      padding: EdgeInsets.only(top: 5.0, left: 20.0, bottom: 20.0),
      child: Row(
        children: [
          Container(
            height: 65.0,
            width: 65.5,
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(avterImag),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Text(
                userName,
                style: loginRegisterStyle,
              ),
              // Row(
              //   children: [
              //     // 登录
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.of(context).pushNamed('login');
              //       },
              //       child: Text(
              //         '登录',
              //         style: loginRegisterStyle,
              //       ),
              //     ),
              //     Text(
              //       '/',
              //       style: loginRegisterStyle,
              //     ),
              //     // 注册
              //     GestureDetector(
              //       onTap: () {
              //         Navigator.of(context).pushNamed('register');
              //       },
              //       child: Text(
              //         '注册',
              //         style: loginRegisterStyle,
              //       ),
              //     ),
              //   ],
              // ),
              Text('查看编辑个人资料',
                  style: TextStyle(color: Colors.white, fontSize: 14.0))
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var isLogin = false;
    return isLogin ? _NotLoginBuilder(context) : _LoginBuilder(context);
  }
}
