import 'package:flutter/material.dart';



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  GridViewDemo(),
      
    );
  }
}

class GridViewDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child:
      //  GridView(
      //   gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
      //     crossAxisCount: 2,//指定列数
      //     mainAxisSpacing: 20,//主轴边距
      //     crossAxisSpacing: 20,//横轴边距
      //     childAspectRatio: 1.5,//子组件的宽高比例

      //     ),
      //     children: [
      //       Container(color: Colors.green ),
      //       Container(color: Colors.black ),
      //       Container(color: Colors.yellow ),
      //       Container(color: Colors.blue ),
      //       Container(color: Colors.green ),
      //     ],
      //   ),

      GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 100,
          mainAxisSpacing: 50,
          crossAxisSpacing: 20,
          childAspectRatio: 1.32
          ),//固定宽度，列数自适应
           children: [
             Container(color: Colors.green ),
            Container(color: Colors.black ),
            Container(color: Colors.yellow ),
            Container(color: Colors.blue ),
            Container(color: Colors.green ),
          ],
        
      ),
    );
  }
}