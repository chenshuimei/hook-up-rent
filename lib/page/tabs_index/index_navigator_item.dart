/*
 * @Description: 这是***页面
 * @Date: 2022-08-03 16:12:00
 * @Author: shuimei
 * @LastEditTime: 2022-08-04 11:17:29
 */
import 'package:flutter/material.dart';

class IndexNavigatorItem {
  final String title;
  final String imageUrl;
  final Function(BuildContext context) onTap;

  IndexNavigatorItem(this.title, this.imageUrl, this.onTap);
}

List<IndexNavigatorItem> navigatorItemList = [
  IndexNavigatorItem('整租', 'static/images/home-index-home.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('合租', 'static/images/home-index-person.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('地图找房', 'static/images/home-index-map.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
  IndexNavigatorItem('去出租', 'static/images/home-index-rent.png',
      (BuildContext context) {
    Navigator.of(context).pushNamed('login');
  }),
];
