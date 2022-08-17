/*
 * @Description: 这是***页面
 * @Date: 2022-08-04 14:46:41
 * @Author: shuimei
 * @LastEditTime: 2022-08-04 15:04:22
 */
import 'package:flutter/material.dart';

class IndexRecommedItem {
  final String title;
  final String subTitle;
  final String imageUrl;
  final String navigatorUrl;

  const IndexRecommedItem(
      this.title, this.subTitle, this.imageUrl, this.navigatorUrl);
}

const List<IndexRecommedItem> IndexRecommedData = [
  const IndexRecommedItem(
      '家住回龙观', '归属的感觉', 'static/images/home_index_recommend_1.png', 'login'),
  const IndexRecommedItem(
      '宜居四五环', '大都市生活', 'static/images/home_index_recommend_2.png', 'login'),
  const IndexRecommedItem(
      '比邻十号线', '地铁心连心', 'static/images/home_index_recommend_3.png', 'login'),
  const IndexRecommedItem(
      '番禺好居住', '回归大自然', 'static/images/home_index_recommend_4.png', 'login')
];
