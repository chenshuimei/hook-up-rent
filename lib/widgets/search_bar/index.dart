// ignore_for_file: prefer_const_constructors

/*
 * @Description: 这是***页面
 * @Date: 2022-08-09 11:26:29
 * @Author: shuimei
 * @LastEditTime: 2022-08-15 11:56:16
 */
import 'dart:ui';

import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final bool? showLocation; // 是否显示位置按钮
  final void Function()? goBackCallBack; // 回退按钮函数
  final String? inputValue; // 搜索框输入值
  final String? defaultInputValue;
  final void Function()? onCancel; // 取消按钮
  final bool? showMap; // 是否显示地图按钮
  final void Function()? onSearch; // 搜索函数
  final ValueChanged<String>? onSearchSubmit;

  const SearchBar(
      {Key? key,
      this.showLocation,
      this.goBackCallBack,
      this.inputValue = '',
      this.defaultInputValue = '请输入搜索词',
      this.onCancel,
      this.showMap,
      this.onSearch,
      this.onSearchSubmit})
      : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String _searchWord = ''; // 输入的关键词
  late TextEditingController _controller;
  late FocusNode _focus;

  // 清除事件
  _onClean() {
    _controller.clear();
    setState(() {
      _searchWord = '';
    });
  }

  // 初始化
  @override
  void initState() {
    // TODO: implement initState
    _controller = TextEditingController(text: widget.inputValue);
    _focus = FocusNode();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          if (widget.showLocation != null)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () => {},
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Icon(
                      Icons.room,
                      color: Colors.green,
                      size: 16.0,
                    ),
                    Text(
                      '北京',
                      style: TextStyle(color: Colors.black, fontSize: 16.0),
                    )
                  ],
                ),
              ),
            ),
          if (widget.goBackCallBack != null)
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: widget.goBackCallBack,
                child: Icon(
                  Icons.chevron_left,
                  color: Colors.black,
                ),
              ),
            ),
          Expanded(
              child: Container(
            height: 34.0,
            decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(10.0)),
            margin: EdgeInsets.only(right: 10.0),
            child: TextField(
              focusNode: _focus,
              controller: _controller,
              onTap: () {
                if (widget.onSearchSubmit == null) {
                  _focus.unfocus(); // 失去焦点

                }
                widget.onSearch!();
              },

              onSubmitted: widget.onSearchSubmit,
              textInputAction: TextInputAction.search, // 键盘文字
              onChanged: (String val) {
                setState(() {
                  _searchWord = val;
                });
              },
              decoration: InputDecoration(
                  border: InputBorder.none, // 去掉默认边框
                  hintText: '请输入搜索词',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0),
                  contentPadding: EdgeInsets.only(top: 0, left: -10.0),
                  suffixIcon: GestureDetector(
                    onTap: () => {_onClean()},
                    child: Icon(
                      Icons.clear,
                      size: 18.0,
                      color: _searchWord == '' ? Colors.grey[200] : Colors.grey,
                    ),
                  ),
                  icon: Padding(
                      padding: EdgeInsets.only(left: 5.0),
                      child: Icon(
                        Icons.search,
                        size: 18.0,
                        color: Colors.grey,
                      ))),
            ),
          )),
          if (widget.onCancel != null)
            GestureDetector(
                onTap: widget.onCancel,
                child: Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Text(
                    '取消',
                    style: TextStyle(color: Colors.black, fontSize: 16.0),
                  ),
                )),
          if (widget.showMap != null)
            Image.asset('static/icons/widget_search_bar_map.png')
        ],
      ),
    );
  }
}
