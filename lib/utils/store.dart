/*
 * @Description: 这是数据缓存
 * @Date: 2022-08-12 10:55:39
 * @Author: shuimei
 * @LastEditTime: 2022-08-12 11:20:16
 */
import 'package:shared_preferences/shared_preferences.dart';

enum StoreKeys {
  token,
}

class Store {
  static StoreKeys? storeKeys;
  final SharedPreferences _store;
  static Future<Store> getInstance() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return Store._internal(prefs);
  }

  Store._internal(this._store);
  getString(StoreKeys key) async {
    return _store.get(key.toString());
  }

  setString(StoreKeys key, String value) async {
    return _store.setString(key.toString(), value);
  }

  getStringList(StoreKeys key) async {
    return _store.getStringList(key.toString());
  }

  setStringList(StoreKeys key, List<String> value) async {
    return _store.setStringList(key.toString(), value);
  }
}
