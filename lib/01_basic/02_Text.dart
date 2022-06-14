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
      body: TextDemo(),
    );
  }
}

class TextDemo  extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          " a graphic designer, lettering artist and type designer based just outside of St. Louis, MO, USA. Spanning nearly four decades, Rob’s work has consisted mostly of producing lettering and graphics for packaging, logos, and social expression products.",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 30,
            color: Colors.blue,
            fontWeight: FontWeight.w900,
            fontStyle: FontStyle.italic,//字体样式，倾斜
            fontFamily: 'Square_Peg'
          ),
          textAlign: TextAlign.left,//左对齐
         // maxLines: 2,//只显示一行
         // overflow: TextOverflow.ellipsis,
          textScaleFactor: 1.5,
        ),
      RichText(
        // ignore: prefer_const_constructors
        text: TextSpan(
          text: "hello",
         
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 40,
            color: Colors.black,
           // fontFamily: 'Square_Peg'
         
          ),
          
          children: [
            TextSpan(
              text: "nihao",
              style: TextStyle(
                fontSize: 90,
                color: Color.fromARGB(255, 255, 222, 210),
                fontFamily: 'Square_Peg'
              ),
            ),
            TextSpan(
              text: "SHIJIE",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black38,
                fontFamily: 'Square_Peg'
              )
            )
          ]
        )
       
        )
      ],
    );
  }
}