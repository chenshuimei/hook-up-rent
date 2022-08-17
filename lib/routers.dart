// ignore_for_file: prefer_final_fields

/*
 * @Description: 这是路由页面
 * @Date: 2022-07-29 14:09:20
 * @Author: shuimei
 * @LastEditTime: 2022-08-02 15:23:18
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

class Routes {
  //1.定义路由名称
  static String home = "/";
  static String login = "/login";
  static String register = "/register";
  static String roomDetail = "/room/:roomId";

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

  //3.编写函数 configureRoutes
  static void configureRoutes(FluroRouter router) {
    router.define(home, handler: _homeHandler);
    router.define(login, handler: _loginHandler);
    router.define(register, handler: _registerHandler);
    router.define(roomDetail, handler: _roomDetailHandler);
    router.notFoundHandler = _notFoundHandler;
  }
}
