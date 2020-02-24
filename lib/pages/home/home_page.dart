import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_frame/pages/home/home_data.dart';
import 'package:flutter_frame/pages/home/model/home_grid/model_home_grid.dart';
import 'package:flutter_frame/pages/home/model/home_swiper/model_home_swiper.dart';
import 'package:flutter_frame/pages/home/model/home_swiper/model_home_swiper_data.dart';
import 'package:flutter_frame/provider/test_provider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TestProvider testProvider = Provider.of<TestProvider>(context, listen: false);
    testProvider.products = getProducts();
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: 250.0,
            flexibleSpace: FlexibleSpaceBar(
              // titlePadding: EdgeInsets.all(15),
                title: Text('布局组件 ',style: TextStyle(color: Colors.white),),
                collapseMode:CollapseMode.parallax,
                background: modelHomeSwiper(),

            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 400.0,
              mainAxisSpacing: 5.0,
              crossAxisSpacing: 5.0,
              childAspectRatio: 2.0,//子控件宽高比
            ),
            delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                return GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, '/swiper_showInfo', arguments: getBodyDataImages()[index]);
                  },
                  child: Card(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Image.asset(getBodyDataImages()[index], fit: BoxFit.cover,),
                          Expanded(child: Text('test test test test test test test test  ')),
                        ],
                      ),
                    ),
                  ),
                );
              },
              childCount: getBodyDataImages().length,
            ),
          ),


          SliverList(
            delegate:  SliverChildListDelegate(
              //返回组件集合
              List.generate(testProvider.products.length, (int index){
                //返回 组件
                return GestureDetector(
                  onTap: () {
                    print("${testProvider.products[index]}");
                    testProvider.removeProduct(index);
                  },
                  child: Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.attach_money),
                                Text(testProvider.products[index]['price']),
                              ],
                            ),
                        ),
                        Text(testProvider.products[index]['name']),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
