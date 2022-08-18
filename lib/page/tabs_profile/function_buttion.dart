/*
 * @Description: 这是***页面
 * @Date: 2022-08-18 14:59:59
 * @Author: shuimei
 * @LastEditTime: 2022-08-18 16:11:40
 */
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hook_up_rent/page/tabs_profile/function_button_data.dart';

import 'function_button_widget.dart';

class FunctionButton extends StatelessWidget {
  const FunctionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(
        spacing: 1.0,
        runSpacing: 1.0,
        children: list.map((e) => FunctionButtonWidget(e)).toList(),
      ),
    );
  }
}
