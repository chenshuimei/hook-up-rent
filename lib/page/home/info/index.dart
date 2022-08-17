/*
 * @Description: 这是***页面
 * @Date: 2022-08-04 17:24:22
 * @Author: shuimei
 * @LastEditTime: 2022-08-05 16:11:24
 */
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/tabs_index/index_recommed_item.dart';

import 'data.dart';
import 'item_widget.dart';

class Info extends StatelessWidget {
  final bool isShowTitle; // 是否显示标题
  final List<InfoItem> dataList;

  const Info({Key? key, this.isShowTitle = false, this.dataList = InfoData})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          if (isShowTitle)
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(10.0),
              child: Text(
                '最新资讯',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
          Column(children: dataList.map((item) => ItemWidget(item)).toList())
        ],
      ),
    );
  }
}
