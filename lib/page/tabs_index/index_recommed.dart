/*
 * @Description: 这是***页面
 * @Date: 2022-08-04 14:47:13
 * @Author: shuimei
 * @LastEditTime: 2022-08-04 16:45:39
 */

// import 'dart:html';

import 'package:flutter/material.dart';

import 'index_recommed_data.dart';
import 'index_recommed_item.dart';

class IndexRemmed extends StatelessWidget {
  final List<IndexRecommedItem> dataList;
  const IndexRemmed({Key? key, this.dataList = IndexRecommedData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(color: Color(0x08000000)), // 设置背景颜色
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '房屋推荐',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
              Text(
                '更多',
                style: TextStyle(
                    color: Colors.black45, fontWeight: FontWeight.w500),
              )
            ],
          ),
          Padding(padding: EdgeInsets.all(5.0)),
          Wrap(
              runSpacing: 10.0, // 换行边距
              spacing: 10.0, // item之间的边距
              children: dataList
                  .map((item) => IndexRecommedItemWidget(item))
                  .toList())
        ],
      ),
    );
  }
}
