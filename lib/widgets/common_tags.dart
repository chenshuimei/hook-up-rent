/*
 * @Description: 这是***页面
 * @Date: 2022-08-08 17:49:56
 * @Author: shuimei
 * @LastEditTime: 2022-08-08 18:07:58
 */
import 'dart:ui';

import 'package:flutter/material.dart';

class CommonTag extends StatelessWidget {
  final String title;
  final Color color;
  final Color backgroundColor;

  const CommonTag(this.title,
      {Key? key,
      this.color = Colors.white,
      this.backgroundColor = Colors.blueGrey})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 5.0),
        padding: EdgeInsets.only(left: 5.0, right: 5.0, top: 3.0, bottom: 3.0),
        child: Text(
          title,
          style: TextStyle(
              fontSize: 10.0, color: color, fontWeight: FontWeight.w500),
        ),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(5.0)));
  }
}
