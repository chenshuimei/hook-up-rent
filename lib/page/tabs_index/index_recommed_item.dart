/*
 * @Description: 这是***页面
 * @Date: 2022-08-04 16:28:30
 * @Author: shuimei
 * @LastEditTime: 2022-08-04 16:57:33
 */
import 'dart:ui';

import 'package:flutter/material.dart';

import 'index_recommed_data.dart';

var textStyle = TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500);

class IndexRecommedItemWidget extends StatelessWidget {
  final IndexRecommedItem data;
  const IndexRecommedItemWidget(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigatorUrl);
      },
      child: Container(
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            color: Colors.white, // 设置背景颜色
            borderRadius: BorderRadius.all(Radius.circular(5.0)) // 设置圆角
            ),
        width: (MediaQuery.of(context).size.width - 10.0 * 3) / 2,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  data.title,
                  style: textStyle,
                ),
                Text(
                  data.subTitle,
                  style: textStyle,
                )
              ],
            ),
            new Image.asset(
              data.imageUrl,
              width: 50.0,
            )
          ],
        ),
      ),
    );
    // return Container(
    //   child: Row(
    //     children: [
    //       Column(
    //         children: [Text(data.title), Text(data.subTitle)],
    //       ),
    //       new Image.asset(data.imageUrl)
    //     ],
    //   ),
    // );
  }
}
