import 'package:flutter_music/baseImport.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../entities/RecommendResp.dart' show Slider;

class RecommendSwiper extends StatefulWidget {

//  RecommendSwiper(ListSilder> slides)
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<RecommendSwiper> {
  var imgUrls = [
    'http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/323823.jpg',
    'http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/322355.jpg',
    'http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/324063.jpg',
    'http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/324254.jpg',
    'http://y.gtimg.cn/music/common/upload/MUSIC_FOCUS/323237.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      // 宽度为有限的值，则将高度设置为width / aspectRatio
      // https://github.com/yang7229693/flutter-study/blob/master/post/6.%20Flutter%20%E5%B8%83%E5%B1%80%EF%BC%88%E4%B8%89%EF%BC%89-%20FittedBox%E3%80%81AspectRatio%E3%80%81ConstrainedBox%E8%AF%A6%E8%A7%A3.md
      aspectRatio: 2.5,
      // https://github.com/best-flutter/flutter_swiper
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Image.network(
            imgUrls[index],
            fit: BoxFit.fill,
          );
        },
        itemCount: imgUrls.length,
        pagination: SwiperPagination(
            alignment: Alignment.bottomCenter,
            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 3.0),
            builder: DotSwiperPaginationBuilder(
                color: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_FIVE,
                activeColor: COLOR_TRANSLUCENT_WHITE_ZERO_POINT_EIGHT,
                space: 4.0)),
        autoplay: true,
        onTap: (index) {
          // 轮播图点击
        },
      ),
    );
  }
}
