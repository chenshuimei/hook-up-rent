/*
 * @Description: 这是***页面
 * @Date: 2022-08-18 14:45:39
 * @Author: shuimei
 * @LastEditTime: 2022-08-18 15:03:57
 */
// import 'dart:js';

import 'package:flutter/material.dart';

class FunctionButtonItem {
  final String imgUrl;
  final String title;
  final Function onTapHandle;

  FunctionButtonItem(this.imgUrl, this.title, this.onTapHandle);
}

final List<FunctionButtonItem> list = [
  FunctionButtonItem('static/images/home_profile_record.png', '看房记录', () {}),
  FunctionButtonItem('static/images/home_profile_order.png', '我的订单', () {}),
  FunctionButtonItem('static/images/home_profile_record.png', '我的收藏', () {}),
  FunctionButtonItem('static/images/home_profile_id.png', '身份认证', () {}),
  FunctionButtonItem('static/images/home_profile_message.png', '联系我们', () {}),
  FunctionButtonItem('static/images/home_profile_house.png', '房屋管理', (context) {
    bool isLogin = true;
    if (isLogin) {
      Navigator.pushNamed(context, 'roomManage');
      return;
    }
    Navigator.pushNamed(context, 'login');
  }),
  FunctionButtonItem('static/images/home_profile_contract.png', '电子合同', () {}),
  FunctionButtonItem('static/images/home_profile_wallet.png', '钱包', () {}),
];
