import 'package:flutter/material.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterSwiper'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  FlutterSwiper(),
      
    );
  }
}

class FlutterSwiper extends StatelessWidget {

  final List<String> imgs=[
    'images/1.jpg',
    'images/2.jpg',
    'images/3.jpg'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 600,
          child: Swiper(
            itemCount: imgs.length,
            itemBuilder: (context,index){
              return Image.asset(
                imgs[index],
                fit: BoxFit.fill,
              );

            },
            pagination: SwiperPagination(),//轮播图的指示点
            control: SwiperControl(),//左右箭头导航
            viewportFraction: 0.7,//3d轮播效果
            scale: 1,//其他图的比例
          ),
        ),
         
        
      ],
    );
  }
}