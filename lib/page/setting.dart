/*
 * @Description: 这是***页面
 * @Date: 2022-08-18 16:32:35
 * @Author: shuimei
 * @LastEditTime: 2022-08-18 16:34:52
 */
import 'package:flutter/material.dart';
import 'package:hook_up_rent/utils/common_toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('设置'),
      ),
      body: ListView(
        children: [
          RaisedButton(
            onPressed: () => {CommontToast.showToast('退出登录成功！')},
            child: Text('退出登录'),
          ),
        ],
      ),
    );
  }
}
