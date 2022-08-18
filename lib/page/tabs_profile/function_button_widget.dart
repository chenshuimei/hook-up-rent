/*
 * @Description: 这是***页面
 * @Date: 2022-08-18 16:05:05
 * @Author: shuimei
 * @LastEditTime: 2022-08-18 16:25:02
 */
import 'package:flutter/material.dart';

import 'function_button_data.dart';

class FunctionButtonWidget extends StatelessWidget {
  final FunctionButtonItem data;

  const FunctionButtonWidget(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        data.onTapHandle(context);
      },
      child: Container(
        margin: EdgeInsets.only(top: 20.0),
        width: MediaQuery.of(context).size.width * 0.33,
        child: Column(children: [
          Image.asset(
            data.imgUrl,
            width: 50.0,
            height: 50.0,
          ),
          Text(data.title)
        ]),
      ),
    );
  }
}
