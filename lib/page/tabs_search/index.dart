/*
 * @Description: 这是***页面
 * @Date: 2022-08-05 17:45:24
 * @Author: shuimei
 * @LastEditTime: 2022-08-15 11:50:11
 */
// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/widgets/room_list_item_widget.dart';
import 'package:hook_up_rent/widgets/search_bar/index.dart';

import 'data_List.dart';

class TabSearch extends StatefulWidget {
  const TabSearch({Key? key}) : super(key: key);

  @override
  State<TabSearch> createState() => _TabSearchState();
}

class _TabSearchState extends State<TabSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SearchBar(
          showLocation: true,
          showMap: true,
          onSearch: () {
            Navigator.of(context).pushNamed('search');
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 40.0,
            child: Text('筛选'),
          ),
          Expanded(
            child: ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
          )
        ],
      ),
    );
  }
}
