/*
 * @Description: 这是最新资讯item页面
 * @Date: 2022-08-05 15:13:09
 * @Author: shuimei
 * @LastEditTime: 2022-08-05 16:17:38
 */
// import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/tabs_index/index_recommed_item.dart';

import 'data.dart';

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget(this.data, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        children: [
          Image.network(
            data.imageUrl,
            width: 80.0,
            height: 80.0,
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
              child: Column(
            children: [
              Text(
                data.title,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w600),
              ),
              Padding(padding: EdgeInsets.only(top: 10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    data.time,
                    style: TextStyle(color: Colors.black54),
                  ),
                  // Padding(padding: EdgeInsets.only(left: 10.0)),
                  Text(data.source, style: TextStyle(color: Colors.black54))
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
