import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('image'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ImageDemo (),
    );
  }
}

class ImageDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //加载本地图片
        Image.asset('images/bg1.jpg',
        height: 100,
        width: 100,
        //fit: BoxFit.cover,
        ),
        Image.network('https://i1.hdslb.com/bfs/face/2f0b5b79af26a4e15ae2c47d520a64d146cd55e3.jpg@240w_240h_1c_1s.webp',
        repeat: ImageRepeat.repeat,
        colorBlendMode: BlendMode.colorBurn,
        color: Color.fromARGB(255, 223, 196, 196),
        )
      ],
    );
  }
}