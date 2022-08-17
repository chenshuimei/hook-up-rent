/*
 * @Description: 这是***页面
 * @Date: 2022-08-05 17:14:12
 * @Author: shuimei
 * @LastEditTime: 2022-08-09 10:59:06
 */

import 'package:flutter/cupertino.dart';

class RoomListItemData {
  final String id;
  final String title;
  final String subTitle;
  final String imageUrl;
  final List<String> tags;
  final int price;

  const RoomListItemData(
      {required this.id,
      required this.title,
      required this.subTitle,
      required this.imageUrl,
      required this.tags,
      required this.price});
}

const List<RoomListItemData> dataList = [
  RoomListItemData(
    id: '1',
    title: '带车位精修大两房业主着急诚信放租 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: ['近地铁', '商圈', '新上'],
    price: 1200,
  ),
  RoomListItemData(
    id: '2',
    title: '6号黄陂 富春山居 豪装四房 南北通透 望小区公园 安静不吵',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/445039c60fcf05b5c2560baa6e3a3862/240x180c.jpg?t=1&srotate=1?w=320&h=240&crop=1',
    tags: ['近地铁', '商圈', '新上'],
    price: 1899,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/e158af2e8877a071585f3f13d7e4494c/240x180c.jpg?t=1&srotate=1?w=320&h=240&crop=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 1200,
  ),
  RoomListItemData(
    id: '4',
    title: '带车位精修大两房业主着急诚信放租 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: ['近地铁', '商圈', '新上', '学校'],
    price: 3444,
  ),
  RoomListItemData(
    id: '5',
    title: '带车位精修大两房业主着急诚信放租 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: ['教育'],
    price: 13400,
  ),
  RoomListItemData(
    id: '6',
    title: '带车位精修大两房业主着急诚信放租 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/1286888e545a4a7fc1c0c7461b1ee1d6/240x180c.jpg?t=1&srotate=1?w=320&h=240&crop=1',
    tags: ['近地铁', '商圈', '新上'],
    price: 4000,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 5000,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 700,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 1200,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 2344,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 4566,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 1200,
  ),
  RoomListItemData(
    id: '3',
    title: '保利林语紧缺别墅出租，真图片  新收靓房  业主有心想 随时看房',
    subTitle: '两居室-100-南北通向',
    imageUrl:
        'https://pic1.ajkimg.com/display/anjuke/8e7fde828950d03c70f2ca3a1af51cfe/240x180c.jpg?t=1&srotate=1',
    tags: [
      '近地铁',
      '商圈',
    ],
    price: 7844,
  ),
];
