
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frame/pages/about/about_server.dart';
import 'package:flutter_frame/provider/test_provider.dart';
import 'package:provider/provider.dart';

class AboutMe extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('个人'),automaticallyImplyLeading: false,),
      body: Center(
        child: AllProducts(),
      ),

       floatingActionButton: FloatingActionButton(
         elevation: 3.0,
         highlightElevation: 2.0,
         tooltip: '改变主题',
         child: Icon(Icons.cached),
         onPressed: (){
           Provider.of<TestProvider>(context,listen: false).reverseTheme();
         },
       ),
      );
  }
}