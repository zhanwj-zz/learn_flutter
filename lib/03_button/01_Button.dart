

import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮组件'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: ButtonDemo(),
       floatingActionButton: FloatingActionButton(
        onPressed: (){},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        elevation: 0,//去掉阴影
      ),
    );
  }
}


class ButtonDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Wrap(
        children: [
          TextButton(onPressed: (){
            print('点击textbutton');
          },
          onLongPress: (){
            print("长按按钮");
          },
           child: Text('TextButton',
           style: TextStyle(
             fontSize: 20,
           ),
           )
           ),
           ElevatedButton(onPressed: (){
            print('点击button');
          },
          onLongPress: (){
            print("长按按钮");
          },
           child: Text('ElevatedButton',
           style: TextStyle(
             fontSize: 20,
           ),
           )
           ),
           OutlinedButton(onPressed: (){
            print('点击button');
          },
          onLongPress: (){
            print("长按按钮");
          },
           child: Text('OutlinedButton'),
     
           ),
            OutlinedButton(onPressed: (){
            print('点击button');
          },
          onLongPress: (){
            print("长按按钮");
          },
           child: Text('轮廓按钮'),
           style: ButtonStyle(
             textStyle:MaterialStateProperty.all(
               TextStyle(
                 fontSize: 30,
               )
             ),
             foregroundColor: MaterialStateProperty.resolveWith((states) {
               if(states.contains(MaterialState.pressed)){
                 //按下的颜色
                 return Colors.brown;
               }
               //默认颜色
               return Colors.red;
             }),
              backgroundColor: MaterialStateProperty.resolveWith((states) {
               if(states.contains(MaterialState.pressed)){
                 return Colors.blue;
               }
               return Color.fromARGB(255, 132, 143, 151);
             }),
             shadowColor: MaterialStateProperty.all(Colors.blue),
             elevation: MaterialStateProperty.all(20),
             side: MaterialStateProperty.all(
               BorderSide(
                 color: Colors.blue,
                 width: 2
               )
             ),
             //声明按钮形状，体育场
             shape: MaterialStateProperty.all(
               StadiumBorder(
                 side: BorderSide(
                   color: Color.fromARGB(255, 239, 236, 235),
                   width: 2
                 )
               ),
             ),
             //设置按钮大小
           minimumSize: MaterialStateProperty.all(Size(100,100)),
           //设置水波纹颜色
           overlayColor: MaterialStateProperty.all(Colors.white24)
             ),
             
           ),
           OutlinedButtonTheme(
             data:OutlinedButtonThemeData(
               style: ButtonStyle(
                 overlayColor: MaterialStateProperty.all(Color.fromARGB(255, 202, 216, 218))
               ),
             ),
              child:OutlinedButton(onPressed: (){
            print('点击button');
          },
          onLongPress: (){
            print("长按按钮");
          },
           child: Text('OutlinedButton'),
           style: ButtonStyle(
            // overlayColor: MaterialStateProperty.all(Colors.blue)
            //如果里面声明了样式就用里面的
           ),
           ), 
           ),
           IconButton(
             onPressed: (){
               print('IconButton');
             },
              icon: Icon(Icons.abc),
              color: Colors.blue,
              highlightColor: Colors.black87,
              iconSize: 50,
              tooltip: "啦啦啦",
              ),
              TextButton.icon(
                onPressed: (){

                },
                 icon: Icon(Icons.abc), 
                 label: Text("111"),
                 
                 ),
                 Container(
                   color: Colors.blue,
                   width: double.infinity,
                   child: ButtonBar(
                     children: [
                       ElevatedButton(
                         onPressed: (){

                         },
                          child: Text("按钮1")
                          ),
                           ElevatedButton(
                         onPressed: (){

                         },
                          child: Text("按钮2")
                          ),
                           ElevatedButton(
                         onPressed: (){

                         },
                          child: Text("按钮3")
                          ),
                           ElevatedButton(
                         onPressed: (){

                         },
                          child: Text("按钮4")
                          ),
                     ],
                   ),
                 ),
                 BackButton(
                   color: Colors.black,
                   onPressed: (){

                   },
                 ),
                 CloseButton(
                   color: Colors.black,
                   onPressed: (){

                   },
                 )
        ],
      ),
    );
  }
}