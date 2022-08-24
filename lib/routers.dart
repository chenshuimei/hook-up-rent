// ignore_for_file: prefer_final_fields

/*
 * @Description: 这是路由页面
 * @Date: 2022-07-29 14:09:20
 * @Author: shuimei
 * @LastEditTime: 2022-08-24 16:40:51
 */
// import 'dart:ffi';

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/home/index.dart';
// ignore: unused_import
import 'package:hook_up_rent/page/login.dart';
import 'package:fluro/fluro.dart';
import 'package:hook_up_rent/page/not_found.dart';
import 'package:hook_up_rent/page/register.dart';
import 'package:hook_up_rent/page/room_detail/index.dart';
import 'package:hook_up_rent/page/room_manage/index.dart';
import 'package:hook_up_rent/page/setting.dart';

import 'page/room_manage/room_add.dart';

class Routes {
  //1.定义路由名称
  static String home = "/";
  static String login = "/login";
  static String register = "/register";
  static String roomDetail = "/room/:roomId";
  static String setting = "/setting";
  static String roomManage = "/roomManage";
  static String roomAdd = "/roomAdd";

  //2.定义路由处理函数
  static Handler _homeHandler = Handler(handlerFunc: (context, parameters) {
    // ignore: prefer_const_constructors
    return HomePage();
  });
  static Handler _loginHandler = Handler(handlerFunc: (context, parameters) {
    return LoginPage();
  });
  static Handler _registerHandler = Handler(handlerFunc: (context, parameters) {
    return RegisterPage();
  });
  static Handler _notFoundHandler = Handler(handlerFunc: (context, parameters) {
    return NotFoundPage();
  });
  static Handler _roomDetailHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> parameters) {
    return RoomDetailPage(roomId: parameters['roomId'][0]);
  });
  static Handler _settingHandler = Handler(handlerFunc: (context, parameters) {
    return SettingPage();
  });
  static Handler _roomManageHandler =
      Handler(handlerFunc: (context, parameters) {
    return RoomManagePage();
  });
  static Handler _roomAddHandler = Handler(handlerFunc: (context, parameters) {
    return RoomAddPage();
  });

  //3.编写函数 configureRoutes
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.define(setting, handler: _settingHandler);
    router.define(roomManage, handler: _roomManageHandler);
    router.define(roomAdd, handler: _roomAddHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
