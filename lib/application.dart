/*
 * @Description: 这是***页面
 * @Date: 2022-07-29 10:34:57
 * @Author: shuimei
 * @LastEditTime: 2022-08-12 14:09:58
 */
import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/login.dart';
import 'package:fluro/fluro.dart';
import 'package:hook_up_rent/routers.dart';
import 'package:hook_up_rent/scoded_model/auth.dart';
import 'package:scoped_model/scoped_model.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    // return MaterialApp(
    //   // 自定义主题颜色
    //   theme: ThemeData(
    //       colorScheme: const ColorScheme(
    //           primary: Colors.green, //上方标题栏颜色
    //           primaryVariant: Colors.white,
    //           secondary: Colors.green,
    //           background: Colors.white,
    //           error: Colors.red,
    //           brightness: Brightness.light,
    //           onBackground: Colors.pink,
    //           secondaryVariant: Colors.white,
    //           onError: Colors.yellow,
    //           onPrimary: Colors.white, //字体颜色
    //           onSecondary: Colors.green,
    //           onSurface: Colors.green,
    //           surface: Colors.grey
    //           // all fields should have a value
    //           )),
    //   onGenerateRoute: router.generator,
    // );
    return ScopedModel(
        model: AuthModel(),
        child: MaterialApp(
          // 自定义主题颜色
          theme: ThemeData(
              colorScheme: const ColorScheme(
                  primary: Colors.green, //上方标题栏颜色
                  primaryVariant: Colors.white,
                  secondary: Colors.green,
                  background: Colors.white,
                  error: Colors.red,
                  brightness: Brightness.light,
                  onBackground: Colors.pink,
                  secondaryVariant: Colors.white,
                  onError: Colors.yellow,
                  onPrimary: Colors.white, //字体颜色
                  onSecondary: Colors.green,
                  onSurface: Colors.green,
                  surface: Colors.grey
                  // all fields should have a value
                  )),
          onGenerateRoute: router.generator,
        ));
  }
}
