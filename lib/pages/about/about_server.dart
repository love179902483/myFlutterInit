


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_frame/provider/test_provider.dart';

class AllProducts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TestProvider testProvider = Provider.of<TestProvider>(context, listen: false);
    // TODO: implement build

    List<ListTile> allProductWidget = [];

    for(int i = testProvider.products.length - 1; i>0; i--){
      ListTile thisProductWidget = ListTile(
        title: Text('${testProvider.products[i]['name']}'),
        trailing:Text('${testProvider.products[i]['price']}￥'),
      );
      allProductWidget.add(thisProductWidget);
    }
    return ListView(
        children: allProductWidget,
    );
  }
}

//List<ListTile> getAllProduct(){
//
//
//    List<ListTile> allProduct = [];
//
//    for()
//
//}