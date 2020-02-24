import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frame/pages/loading/loading_server.dart';

class LoadingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Center(
            child: Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: <Widget>[
        Positioned(
          child: Image.asset(
            'assets/images/body/001.jpg',
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
            child: MaterialButton(
          onPressed: () {
            jumpToHome(context);
          },
          height: 60,
          color: Colors.orange,
          minWidth: MediaQuery.of(context).size.width,
          child: Text('跳转到主页'),
        ))
      ],
    )));
  }
}
