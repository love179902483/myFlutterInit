import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_frame/provider/badge_provider.dart';

class NewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BadgeProvider badgeProvider = Provider.of<BadgeProvider>(context, listen: false);
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('消息'),
        automaticallyImplyLeading: false,
      ),
        body: Center(
      child: Column(
        children: <Widget>[
          RaisedButton(
            onPressed: (){
              badgeProvider.testBadgeProviderSet('2');
              print(badgeProvider.testBadgeProvider);
            },
            child: Text('测试provider'),
          )
        ],
      ),
    ));
  }
}
