import 'package:flutter_music/baseImport.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../entities/RecommendResp.dart' show SliderItem;
import 'package:flutter_music/entities/RecommendResp.dart';
import '../pages/WebViewPage.dart';

class RecommendSwiper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<RecommendSwiper> {
  Dio dio = DioUtils.getDio();

  MyState() {
    getData();
  }

  List<SliderItem> sliderItems = [];

  getData() async {
    try {
      Response response = await dio.get(
          'https://c.y.qq.com/musichall/fcgi-bin/fcg_yqqhomepagerecommend.fcg',
          data: {
            'platform': 'h5',
            'uin': 0,
            'needNewCode': 1,
            'param': 'jsonpCallback',
            'prefix': 'jp'
          });

      RecommendResp resp = RecommendResp.fromJson(json.decode(response.data));
      if (DioUtils.isOk(resp.code)) {
        setState(() {
          sliderItems = resp.data.slider;
        });
      }
    } on DioError catch (e) {
      MyToast.show('轮播图请求出错');
    }
  }

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
            sliderItems[index].picUrl,
            fit: BoxFit.fill,
          );
        },
        itemCount: sliderItems.length,
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
          _onTap(sliderItems[index].linkUrl);
        },
      ),
    );
  }

  void _onTap(String url) {
    Navigator.of(context).push(new PageRouteBuilder(
        opaque: false,
        pageBuilder: (BuildContext context, _, __) {
          return new WebViewPage(url);
        },
        // 过渡效果
//        transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
//          return new FadeTransition(
//              opacity: animation,
//              child: new SlideTransition(
//                  position: new Tween<Offset>(
//                    begin: const Offset(0.0, 1.0),
//                    end: Offset.zero,
//                  ).animate(animation),
//                  child: child)
//          );
//        }

        ));
  }
}
