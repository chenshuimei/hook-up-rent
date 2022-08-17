/*
 * @Description: 这是轮播图页面
 * @Date: 2022-08-02 17:04:04
 * @Author: shuimei
 * @LastEditTime: 2022-08-04 16:00:57
 */
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
// import 'package:hook_up_rent/widgets/common_image.dart';

const List<String> defaultImg = [
  'https://img2.baidu.com/it/u=721079060,3527655769&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
  'https://img2.baidu.com/it/u=1323381397,1964258445&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333',
  'https://img1.baidu.com/it/u=2775822367,355751974&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=333',
  'https://img2.baidu.com/it/u=2675704421,1465007989&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=333'
];

var imagesWidth = 500.0; // 图片宽度
var imagesHeight = 333.0; // 图片高度

class CommonSwiper extends StatelessWidget {
  final List<String> images;
  const CommonSwiper({Key? key, this.images = defaultImg}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.width / imagesWidth * imagesHeight;
    return Container(
      height: height,
      child: Swiper(
        autoplay: true, // 自动轮播
        itemBuilder: (BuildContext context, int index) {
          return new Image.network(
            images[index],
            fit: BoxFit.fill,
            height: imagesHeight,
            width: imagesWidth,
          );
        },
        itemCount: 3,
        pagination: new SwiperPagination(),
        // control: new SwiperControl(),
      ),
    );
  }
}
