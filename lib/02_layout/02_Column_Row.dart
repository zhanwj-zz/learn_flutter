import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ColumnRowDemo(),
    );
  }
}

class ColumnRowDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      width: double.infinity,
      child: Column(
        //主轴对齐方式
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.access_alarm,size:30),
          Icon(Icons.abc_outlined,size: 30,),
          Icon(Icons.account_tree,size: 30,),
          Icon(Icons.alarm_add,size: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.access_alarm,size:30),
          Icon(Icons.abc_outlined,size: 30,),
          Icon(Icons.account_tree,size: 30,),
          Icon(Icons.alarm_add,size: 30,)
            ],
          ),
        ],
      ),
      
    );
  }
}