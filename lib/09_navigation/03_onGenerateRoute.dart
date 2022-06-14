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
              onPressed: () =>Navigator.pushNamed(context, '/product'), 
              child: Text('跳转')
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