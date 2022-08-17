/*
 * @Description: 这是***页面
 * @Date: 2022-08-11 16:05:28
 * @Author: shuimei
 * @LastEditTime: 2022-08-11 16:05:32
 */
import 'package:fluttertoast/fluttertoast.dart';

class CommontToast {
  static showToast(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        fontSize: 16.0);
  }
}
