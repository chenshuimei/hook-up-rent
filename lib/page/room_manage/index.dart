/*
 * @Description: 这是***页面
 * @Date: 2022-08-19 14:59:57
 * @Author: shuimei
 * @LastEditTime: 2022-08-24 16:34:46
 */
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/index.dart';
import 'package:hook_up_rent/page/tabs_index/index_recommed_item.dart';
import 'package:hook_up_rent/page/tabs_search/data_List.dart';
import 'package:hook_up_rent/widgets/room_list_item_widget.dart';

class RoomManagePage extends StatelessWidget {
  const RoomManagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: GestureDetector(
          onTap: () => {Navigator.of(context).pushNamed('roomAdd')},
          child: Container(
            height: 40.0,
            margin: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
                color: Colors.green, borderRadius: BorderRadius.circular(10.0)),
            child: Center(
              child: Text(
                '发布房源',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          title: Text(
            '房屋管理',
          ),
          bottom: TabBar(
            tabs: [
              Tab(
                text: '空置',
              ),
              Tab(text: '已租')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
            ListView(
              children:
                  dataList.map((item) => RoomListItemWidget(item)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
