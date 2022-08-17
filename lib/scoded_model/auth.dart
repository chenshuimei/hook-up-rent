/*
 * @Description: 这是***页面
 * @Date: 2022-08-12 11:23:01
 * @Author: shuimei
 * @LastEditTime: 2022-08-12 14:07:17
 */
import 'package:flutter/cupertino.dart';
import 'package:hook_up_rent/utils/store.dart';
import 'package:hook_up_rent/utils/string_is_null_or_empty.dart';
import 'package:scoped_model/scoped_model.dart';

class AuthModel extends Model {
  String _token = '';
  String get token => _token;
  bool get isLogin => _token is String && _token != '';
  void initApp(BuildContext context) async {
    Store store = await Store.getInstance();
    String token = await store.getString(StoreKeys.token);
    if (!StringIsNullOrEmpty(token)) {
      login(token, context);
    }
  }

// 登录
  void login(String token, BuildContext context) {
    _token = token;
    notifyListeners();
  }
  // 退出登录

  void logout() {
    _token = '';
    notifyListeners();
  }
}
