import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>Navigator.pushNamed(
                context, 
                'product',
                arguments: {'title':"我是主页传过来的参数"}
                ), 
              child: Text('跳转到商品页面')
              ),
              ElevatedButton(
              onPressed: () =>Navigator.pushNamed(
                context, 
                'productdetali',
                arguments: {'id':1}
                ), 
              child: Text('商品1')
              ),
              ElevatedButton(
              onPressed: () =>Navigator.pushNamed(
                context, 
                'productdetali',
                arguments: {'id':2}
                ), 
              child: Text('商品2')
              ),
            ElevatedButton(
              onPressed: () =>Navigator.pushNamed(context, 'user'), 
              child: Text('未知界面')
              ),
          ],
        ),
      )
      
    ); 
  }
}

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Object? arguments=ModalRoute.of(context)!.settings.arguments;

     return Scaffold(
      appBar: AppBar(
        title: Text('商品页面'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            // ignore: prefer_interpolation_to_compose_strings
            Text("接受的参数是："+(arguments as Map)['title']),
            ElevatedButton(
              onPressed: () =>Navigator.pop(context), 
              child: Text('返回'))
          ],
        ),
      )
      
    ); 
  }
}

class UnKnow extends StatelessWidget {
  const UnKnow({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: Text('404'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            
            ElevatedButton(
              onPressed: () =>Navigator.pop(context), 
              child: Text('返回'))
          ],
        ),
      )
      
    ); 
  }
}

class ProductDetali extends StatelessWidget {
  const ProductDetali({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Object? arguments=ModalRoute.of(context)!.settings.arguments;

     return Scaffold(
      appBar: AppBar(
        title: Text('商品详情页面'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:Center(
        child: Column(
          children: [
            // ignore: prefer_interpolation_to_compose_strings
            Text("此页面的ID是"+(arguments as Map)['id'].toString()),
            ElevatedButton(
              onPressed: () =>Navigator.pop(context), 
              child: Text('返回'))
          ],
        ),
      )
      
    ); 
  }
}