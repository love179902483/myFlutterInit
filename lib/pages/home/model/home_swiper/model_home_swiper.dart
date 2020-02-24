import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frame/pages/home/model/home_swiper/model_home_swiper_data.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

Widget modelHomeSwiper() {
  return Container(
      height: 250.0,
    child: Swiper(
        pagination: //添加标记码
            SwiperPagination(alignment: Alignment.bottomCenter),
        autoplay: true, //设置自动播放
        itemCount: getSwiperData().length, //设置item的个数
        itemBuilder: (BuildContext context, int index) {
          //设置item的内容
          return GestureDetector(
            child: Image.asset(
              getSwiperData()[index],
              fit: BoxFit.cover,
            ),
            onTap: () {
              Navigator.pushNamed(context, '/swiper_showInfo',
                  arguments: getSwiperData()[index]);
            },
          );
        },
    ),
  );
}
