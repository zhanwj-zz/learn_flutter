import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card布局'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: CardDemo(),
    );
  }
}

class CardDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.all(20),
          color: Color.fromARGB(255, 183, 144, 86),
          shadowColor: Color.fromARGB(255, 177, 195, 210),//阴影颜色
          elevation: 20,//阴影高度
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
            side: BorderSide(
              color: Colors.white24,
              width: 10
            )
          ),
          child: Column(
            children: [
              ListTile(
               leading: Icon(
                 Icons.supervised_user_circle,
                 size: 60,
               ),
               title: Text(
                 "张三",
                 style: TextStyle(
                   fontSize: 30
                 ),
               ),
               subtitle: Text(
                 "董事长",style: TextStyle(
                   fontSize: 20
                 ),
               ),
              ),
              Divider(),
              ListTile(
             
               title: Text(
                 "电话",
                 style: TextStyle(
                   fontSize: 10
                 ),
               ),
               subtitle: Text(
                 "地址",style: TextStyle(
                   fontSize: 10
                 ),
               ),
              ),
              
         
            ],
          ),
        ), Card(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              ListTile(
               leading: Icon(
                 Icons.supervised_user_circle,
                 size: 60,
               ),
               title: Text(
                 "李四",
                 style: TextStyle(
                   fontSize: 30
                 ),
               ),
               subtitle: Text(
                 "总经理",style: TextStyle(
                   fontSize: 20
                 ),
               ),
              ),
              Divider(),
              ListTile(
             
               title: Text(
                 "电话",
                 style: TextStyle(
                   fontSize: 10
                 ),
               ),
               subtitle: Text(
                 "地址",style: TextStyle(
                   fontSize: 10
                 ),
               ),
              ),
              
         
            ],
          ),
        )
      ],
    );
  }
}