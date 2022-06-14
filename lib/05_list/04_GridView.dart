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
      body:  GridViewBuilderDemo(),
      
    );
  }
}

class GridViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
     child: GridView.extent(
       maxCrossAxisExtent:100 ,
       children: 
         List.generate(10, (index) => Image.asset('images/bg1.jpg')
         
         ),
         mainAxisSpacing: 20,
         crossAxisSpacing: 20,
       padding: EdgeInsets.symmetric(horizontal: 40),
       ),
    );
  }
}

class GridViewBuilderDemo extends StatelessWidget {
final List<dynamic> _tiles=[
            Container(color: Colors.green ),
            Container(color: Colors.black ),
            Container(color: Colors.yellow ),
            Container(color: Colors.blue ),
            Container(color: Colors.green ),
  Container(color: Colors.green ),
  Container(color: Colors.black ),
  Container(color: Colors.yellow ),
  Container(color: Colors.blue ),
  Container(color: Colors.green ),
];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20
          ), 
          itemBuilder: (context,indext){
            return _tiles[indext];
          },
          itemCount: _tiles.length,
          //physics: BouncingScrollPhysics(),//反弹效果
          //physics: ClampingScrollPhysics()//夹住效果
          physics: AlwaysScrollableScrollPhysics(),//始终响应滚动，还有个不能滚动不怎么用
        ),
        
    );
  }
}