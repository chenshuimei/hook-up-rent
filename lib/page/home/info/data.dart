/*
 * @Description: 这是***页面
 * @Date: 2022-08-04 17:07:51
 * @Author: shuimei
 * @LastEditTime: 2022-08-05 16:13:46
 */
class InfoItem {
  final String title;
  final String imageUrl;
  final String source;
  final String time;
  final String navigatorUri;

  const InfoItem(
      {required this.title,
      required this.imageUrl,
      required this.source,
      required this.time,
      required this.navigatorUri});

  // const InfoItem(
  //     this.title, this.imageUrl, this.source, this.time, this.navigatorUri);
}

const List<InfoItem> InfoData = [
  const InfoItem(
      title: '置业选择|从化市中心！首期8万（地铁口~商品住宅）包税，公积金，赠车位',
      imageUrl:
          'https://pic1.ajkimg.com/display/ajk/8d7097652bae819ef42901ff7ddfbe27/640x420c.jpg?t=1',
      source: '新华网',
      time: '两天前',
      navigatorUri: 'login'),
  const InfoItem(
      title: '合生广场 中大商圈万达旁 近地铁 产权清晰 带租',
      imageUrl:
          'https://pic1.ajkimg.com/display/ajk/b840167ba3e5ed3bd28509ff414ccfc4/640x420c.jpg?t=1',
      source: '新华网',
      time: '2022-02-03',
      navigatorUri: 'login'),
  const InfoItem(
      title: '亚运城全新组团一线望江无遮挡视野好南北对流好楼层价格可谈',
      imageUrl:
          'https://pic1.ajkimg.com/display/ajk/6fb0b158f5d398304cee54f3bbe520f1/640x420c.jpg?t=1',
      source: '新华网',
      time: '2022-02-03',
      navigatorUri: 'login'),
  const InfoItem(
      title: '地铁口精装大户型，现房交付，通透户型，团购专车接送，专属优惠',
      imageUrl:
          'https://pic1.ajkimg.com/display/ajk/8d7097652bae819ef42901ff7ddfbe27/640x420c.jpg?t=1',
      source: '新华网',
      time: '2022-02-03',
      navigatorUri: 'login'),
];
