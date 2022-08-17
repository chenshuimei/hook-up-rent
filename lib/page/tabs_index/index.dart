/*
 * @Description: 这是***页面
 * @Date: 2022-08-02 16:41:44
 * @Author: shuimei
 * @LastEditTime: 2022-08-15 11:46:20
 */
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/info/index.dart';
import 'package:hook_up_rent/page/tabs_index/index_navigator.dart';
import 'package:hook_up_rent/widgets/common_swiper.dart';
import 'package:hook_up_rent/widgets/search_bar/index.dart';

import 'index_recommed.dart';

class TabIndex extends StatelessWidget {
  const TabIndex({Key? key}) : super(key: key);

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
      body: ListView(
        children: <Widget>[
          CommonSwiper(), // swiper组件
          IndexNavigator(),
          IndexRemmed(),
          Info(isShowTitle: true)
          // Text('呢容')
        ],
      ),
    );
  }
}
