import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frame/pages/about/about_page.dart';
import 'package:flutter_frame/pages/home/home_page.dart';
import 'package:flutter_frame/pages/news/news_page.dart';
import 'package:flutter_frame/pages/product/product_page.dart';
import 'package:badges/badges.dart';
import 'package:flutter_frame/provider/badge_provider.dart';
import 'package:provider/provider.dart';

class AppScreen extends StatefulWidget {
  @override
  AppScreenState createState() => new AppScreenState();
}

class AppScreenState extends State<AppScreen> {
  int currentIndex;

  List<Widget> pages = [HomePage(), NewsPage(), AboutMe()];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: bottomNavItems,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          _changePage(index);
        },
      ),
    );
  }

  /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }

  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: Text("首页"),
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      title: Text("消息"),
    ),
    BottomNavigationBarItem(

      // provider另一种用法
      icon: Consumer<BadgeProvider>(
        builder: (context, t, child){
          if(t.testBadgeProvider == null || t.testBadgeProvider == 0){
            return Icon(Icons.person);
          }else{
            return Badge(
              badgeContent: Text(t.testBadgeProvider, style: TextStyle(color: Colors.white)),
              shape: BadgeShape.circle,
              child: Icon(Icons.person_outline),
            );
          }
        },
      ),
      title: Text("个人中心"),
    ),
  ];
}
