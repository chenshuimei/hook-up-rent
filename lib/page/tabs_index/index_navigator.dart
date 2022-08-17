/*
 * @Description: 这是***页面
 * @Date: 2022-08-03 17:28:56
 * @Author: shuimei
 * @LastEditTime: 2022-08-04 16:01:20
 */
import 'package:flutter/material.dart';
// import 'package:hook_up_rent/widgets/common_image.dart';
import './index_navigator_item.dart';

class IndexNavigator extends StatelessWidget {
  const IndexNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: navigatorItemList
            .map((item) => InkWell(
                  onTap: () {
                    item.onTap(context);
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        item.imageUrl, // 图片url
                        width: 30.0, // 图片宽度
                        height: 30.0, // 图片高度
                        fit: BoxFit.fill,
                      ),
                      Padding(padding: EdgeInsets.only(top: 6.0)),
                      Text(
                        item.title,
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ))
            .toList(),
      ),
    );
  }
}
