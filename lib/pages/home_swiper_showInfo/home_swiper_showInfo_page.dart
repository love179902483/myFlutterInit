import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeSwiperShowInfo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 命名路由传参
    final  arguments = ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('命名路由传参'),
      ),
      body: Center(
        child: arguments != null
          ? Image.asset(arguments)
          : Text(
          '没有图片',
          style: TextStyle(fontSize: 30),
          ),

      ),
    );
  }
}
//
//
