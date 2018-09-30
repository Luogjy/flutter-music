import 'package:flutter_music/baseImport.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../entities/RecommendResp.dart' show SliderItem;
import 'package:flutter_music/entities/RecommendResp.dart';
import '../pages/WebViewPage.dart';

/// 推荐页的轮播图
class RecommendSwiper extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyState();
  }
}

class MyState extends State<RecommendSwiper> {
  List<SliderItem> sliderItems = [];

  MyState() {
    _getRecommendList();
  }

  int showIndex = 1;

  @override
  Widget build(BuildContext context) {
    return IndexedStack(
      alignment: Alignment.center,
      index: showIndex,
      children: <Widget>[
        TryAgainWidget(() {
          _getRecommendList();
        }),
        AspectRatio(
          // 宽度为有限的值，则将高度设置为width / aspectRatio
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
        )
      ],
    );
  }

  void _onTap(String url) {
    Navigator.of(context).push(new PageRouteBuilder(
      opaque: false,
      pageBuilder: (BuildContext context, _, __) {
        return new WebViewPage(url);
      },
    ));
  }

  _getRecommendList() async {
    Response response = await Api.getRecommendList();
    if (response == null) {
      MyToast.show('轮播图请求出错');
      setState(() {
        showIndex = 0;
      });
    } else {
      RecommendResp resp = RecommendResp.fromJson(json.decode(response.data));
      if (Api.isOk(resp.code)) {
        setState(() {
          sliderItems = resp.data.slider;
          showIndex = 1;
        });
      }
    }
  }
}
