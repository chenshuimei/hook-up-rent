/*
 * @Description: 这是注册页面
 * @Date: 2022-07-29 12:14:54
 * @Author: shuimei
 * @LastEditTime: 2022-08-11 18:08:54
 */
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/utils/dio_http.dart';
import 'package:hook_up_rent/utils/string_is_null_or_empty.dart';
import 'package:hook_up_rent/widgets/content_page.dart';
import 'package:hook_up_rent/utils/common_toast.dart';

// 无状态组件
class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var usernameController = TextEditingController();
  var passwordController = TextEditingController();
  var repeatPasswordController = TextEditingController();

  _registerHandler() async {
    var username = usernameController.text;
    var password = passwordController.text;
    var repeatPassword = repeatPasswordController.text;
    if (password != repeatPassword) {
      CommontToast.showToast('两次输入的密码不一致！');
      return;
    }
    if (StringIsNullOrEmpty(username) || StringIsNullOrEmpty(password)) {
      CommontToast.showToast('用户名或密码不能为空！');
      return;
    }
    const url = "/register";
    var params = {'username': username, 'password': password};

    var res = await DioHttp.of(context).post(url, params);
    var resString = json.decode(res.toString());
    // print(resString); //这个转成了字符串
    int code = resString['data']['code'];
    String msg = resString['data']['message'];
    // print('-----------');
    // print(code);
    if (code == 0) {
      CommontToast.showToast('注册成功！');
      Navigator.of(context).pushReplacementNamed('login'); // 跳转到登录页
    } else {
      CommontToast.showToast(msg);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('注册'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            TextField(
              controller: usernameController,
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(labelText: '密码', hintText: '请输入密码'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              controller: repeatPasswordController,
              obscureText: true,
              decoration:
                  InputDecoration(labelText: '确认密码', hintText: '请输入确认密码'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            RaisedButton(
                color: Colors.green,
                onPressed: () {
                  _registerHandler();
                },
                child: Text(
                  '注册',
                  style: TextStyle(color: Colors.white),
                )),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('已有账号，'),
                TextButton(
                    onPressed: () {
                      // 用替换路由，把上一个页面删除，防止出现登录页和注册页重复返回问题
                      Navigator.pushReplacementNamed(context, 'login');
                    },
                    child: Text(
                      '去登录~',
                      style: TextStyle(color: Colors.green),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
