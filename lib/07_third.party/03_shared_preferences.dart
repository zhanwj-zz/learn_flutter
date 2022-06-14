// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('sharedpreferences'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  SharedPreferencesDemo(),
      
    );
  }
}

class SharedPreferencesDemo extends StatelessWidget {
  const SharedPreferencesDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,      
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: _incrementCounter, 
          child:Text("递增")
          ),
          ElevatedButton(
          onPressed: _decrementCounter, 
          child:Text("递减")
          ),
          ElevatedButton(
          onPressed: _removeCounter, 
          child:Text("删除")
          ),
           ElevatedButton(
          onPressed: _addMyContent, 
          child:Text("设置字符串")
          ),
           ElevatedButton(
          onPressed: _getMyContent, 
          child:Text("查看字符串")
          ),
          ElevatedButton(
          onPressed: _clearMyContent, 
          child:Text("清空")
          ),
      ],
  
      ),

    );
    
  }

  _incrementCounter() async {
    //获取保存实例
    SharedPreferences pref= await SharedPreferences.getInstance();
    int counter =(pref.getInt('counter')??0)+1;
    print('Pressed $counter time');
    await pref.setInt('counter', counter);
  }
   _decrementCounter() async {
    //获取保存实例
    SharedPreferences pref= await SharedPreferences.getInstance();
    int counter =(pref.getInt('counter')??0)-1;
    print('Pressed $counter time');
    await pref.setInt('counter', counter);
  }
  _removeCounter() async {
    //获取保存实例
    SharedPreferences pref= await SharedPreferences.getInstance();
    await pref.remove('counter');
    int counter =(pref.getInt('counter')??0);
    print('Pressed $counter time');
    
  }
  _addMyContent() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setString('hi', 'hello');
    String content=prefs.getString('hi')??'';
    print('设置的字符串是$content');
  }
   _getMyContent() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    
    String content=prefs.getString('hi') ??'';
    print('设置的字符串是$content');
  }
   _clearMyContent() async{
    SharedPreferences prefs=await SharedPreferences.getInstance();
    
    await prefs.clear();
  }
}