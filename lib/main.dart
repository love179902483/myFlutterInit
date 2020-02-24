import 'package:flutter/material.dart';
import 'package:flutter_frame/app.dart';
import 'package:flutter_frame/config/conf.dart';
import 'package:flutter_frame/pages/home_swiper_showInfo/home_swiper_showInfo_page.dart';
import 'package:flutter_frame/pages/loading/loading_page.dart';
import 'package:flutter_frame/provider/badge_provider.dart';
import 'package:flutter_frame/provider/product_provider.dart';
import 'package:flutter_frame/provider/test_provider.dart';
import 'package:flutter_frame/types/product_type.dart';
import 'package:provider/provider.dart';

void main() {
  Config.env = Env.development;
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ProductProvider()),
      ChangeNotifierProvider(create: (_) => TestProvider()),
      ChangeNotifierProvider(create: (_) => BadgeProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     TestProvider currentThemeData = Provider.of<TestProvider>(context,listen: false);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<TestProvider>(context,listen: true).currentTheme,
      routes: <String, WidgetBuilder>{
        '/main': (BuildContext context) => new AppScreen(),
        '/swiper_showInfo': (BuildContext context) =>
            new HomeSwiperShowInfo(), // 这里要传参数
      },
      home: LoadingPage(),
    );
  }
}
