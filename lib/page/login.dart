/*
 * @Description: 这是登录页面
 * @Date: 2022-07-29 12:14:54
 * @Author: shuimei
 * @LastEditTime: 2022-08-12 14:50:30
 */
import 'dart:async';
import 'dart:convert';
// import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/scoded_model/auth.dart';
import 'package:hook_up_rent/utils/common_toast.dart';
import 'package:hook_up_rent/utils/dio_http.dart';
import 'package:hook_up_rent/utils/store.dart';
import 'package:hook_up_rent/utils/string_is_null_or_empty.dart';
import 'package:hook_up_rent/widgets/content_page.dart';
import 'package:scoped_model/scoped_model.dart';

// admin
// 123

// 无状态组件
class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var usernameControllor = TextEditingController();
  var passwordControllor = TextEditingController();

  _loginHandle() async {
    var username = usernameControllor.text;
    var password = passwordControllor.text;
    if (StringIsNullOrEmpty(username) || StringIsNullOrEmpty(password)) {
      CommontToast.showToast('用户名或密码不能为空');
      return;
    }

    var url = '/login';
    var param = {username: username, password: password};
    var res = await DioHttp.of(context).post(url);
    var resMap = json.decode(res.toString());
    print('resMapresMapresMapresMap');
    print(resMap);
    var code = resMap['data']?['code'];
    var msg = resMap['data']?['message'] ?? '登录失败';
    var token = resMap['data']?['token'] ?? '';
    if (code == 0) {
      // 设置缓存
      Store store = await Store.getInstance();
      await store.setString(StoreKeys.token, token);

      CommontToast.showToast('登录成功');
      Timer(Duration(seconds: 1), () {
        // Navigator.of(context).pushReplacementNamed('/');
        Navigator.of(context).pop(); // 返回上一个页面
      });
    } else {
      CommontToast.showToast(msg);
    }

    //测试跳转
    Timer(Duration(seconds: 1), () {
      // Navigator.of(context).pushReplacementNamed('/');
      Navigator.of(context).pop(); // 返回上一个页面
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('登录'),
      ),
      body: SafeArea(
        minimum: EdgeInsets.all(30),
        child: ListView(
          children: [
            TextField(
              controller: usernameControllor,
              decoration: InputDecoration(labelText: '用户名', hintText: '请输入用户名'),
            ),
            Padding(padding: EdgeInsets.all(10)),
            TextField(
              controller: passwordControllor,
              obscureText: true,
              decoration: InputDecoration(
                  labelText: '密码',
                  hintText: '请输入密码',
                  suffixIcon: Icon(Icons.visibility)),
            ),
            Padding(padding: EdgeInsets.all(10)),
            RaisedButton(
                color: Colors.green,
                onPressed: () {
                  _loginHandle();
                },
                child: Text(
                  '登录',
                  style: TextStyle(color: Colors.white),
                )),
            Padding(padding: EdgeInsets.all(10)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('还没有账号，'),
                TextButton(
                    onPressed: () {
                      // 用替换路由，把上一个页面删除，防止出现登录页和注册页重复返回问题
                      Navigator.pushReplacementNamed(context, 'register');
                    },
                    child: Text(
                      '去注册~',
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
