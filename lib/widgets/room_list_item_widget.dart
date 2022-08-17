/*
 * @Description: 这是***页面
 * @Date: 2022-08-08 16:58:35
 * @Author: shuimei
 * @LastEditTime: 2022-08-08 18:00:11
 */
// import 'dart:html';

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/tabs_index/index_recommed_item.dart';
import 'package:hook_up_rent/page/tabs_search/data_List.dart';
import 'package:hook_up_rent/widgets/common_tags.dart';

class RoomListItemWidget extends StatelessWidget {
  final RoomListItemData data;

  const RoomListItemWidget(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Row(
        children: [
          Image.network(
            data.imageUrl,
            width: 120.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          Padding(padding: EdgeInsets.only(left: 10.0)),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                data.subTitle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Wrap(
                children: data.tags.map((e) => CommonTag(e)).toList(),
              ),
              Text(
                '${data.price}元/每月',
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: Colors.orangeAccent),
              )
            ],
          ))
        ],
      ),
    );
  }
}
