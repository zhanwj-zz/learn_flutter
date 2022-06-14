import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/02_layout/02_Column_Row.dart';

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
      body: MyBody (),
    );
  }
}

class MyBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
Widget dialogBox=MyBody();
    //判断当前的平台信息
    if(Platform.isIOS){
      dialogBox=CupetinoDemo();
    }else if(Platform.isAndroid){
      dialogBox=MaterialDemo();
    }
    return Container(
      child: Column(
        
        
        children: [
          dialogBox     
          
        ],
      ),
      
    );
  }
}

class MaterialDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: AlertDialog(
        title: Text("提示"),
        content: Text('确认删除吗？'),
        actions: [
          TextButton(
            onPressed: (){
              print("取消的逻辑");
            },
             child: Text("取消")
             ),
              TextButton(
            onPressed: (){
              print("确认的逻辑");
            },
             child: Text("确认")
             ),
        ],
      ),
      
    );
  }
}

class CupetinoDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CupertinoAlertDialog(
        title: Text("提示"),
        content: Text("确认删除吗？"),
        actions: [
          CupertinoDialogAction(
            child: Text("取消"),
            onPressed: (){
              print("取消的逻辑");
            },
            ),
             CupertinoDialogAction(
            child: Text("确认"),
            onPressed: (){
              print("确认的逻辑");
            },
            )
        ],
      ),
      
    );
  }
}