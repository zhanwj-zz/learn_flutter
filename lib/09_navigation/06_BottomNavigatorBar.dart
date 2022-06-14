

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
 final List<BottomNavigationBarItem> bottom=[
   BottomNavigationBarItem(
     backgroundColor: Colors.blue,
     icon: Icon(Icons.home),
     label: ('首页')
   ),
   BottomNavigationBarItem(
     backgroundColor: Colors.blue,
     icon: Icon(Icons.message),
     label: ('消息')
   ),
   
   BottomNavigationBarItem(
     backgroundColor: Colors.blue,
     icon: Icon(Icons.space_bar),
     label: ('空间')
   ),
   BottomNavigationBarItem(
     backgroundColor: Colors.blue,
     icon: Icon(Icons.person),
     label: ('我')
   ),
 ];

 final  pages=[
   Center(child: Text('home',style: TextStyle(fontSize: 50),),),
   Center(child: Text('messge',style: TextStyle(fontSize: 50),),),
   Center(child: Text('space',style: TextStyle(fontSize: 50),),),
   Center(child: Text('me',style: TextStyle(fontSize: 50),),),
 ] ;

  late int currentIndex;

 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex=0;

  }

void _changePage(int index){
  if(index !=currentIndex){
    setState((){
      currentIndex=index;
    });
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: bottom,
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index){
          _changePage(index);
        },
      ),
      body: pages[currentIndex],
      
    ); 
  }
}


