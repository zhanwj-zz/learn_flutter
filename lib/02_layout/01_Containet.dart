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
      body: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  const ContainerDemo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code, dead_code
    return Container(
      child: Text(
      "故事发生的地点是在每千年回归一次的彗星造访过一个月之前，日本飞驒市的乡下小町糸守町。在这里女高中生三叶每天都过着忧郁的生活，而她烦恼的不光有担任町长的父亲所举行的选举运动，还有家传神社的古老习俗。在这个小小的町，周围都只是些爱瞎操心的老人。为此三叶对于大都市充满了憧憬。"
"然而某一天，自己做了一个变成男孩子的梦。这里有着陌生的房间、陌生的朋友。而眼前出现的则是东京的街道。三叶虽然感到困惑，但是能够来到朝思暮想的都市生活，让她觉得神清气爽。另一方面在东京生活的男高中生立花泷也做了个奇怪的梦，他在一个从未去过的深山小町中，变成了女高中生。两人就这样在梦中邂逅了彼此。",
      style: TextStyle(
        fontSize:20
      ),
      
      ),
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(10.0),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        // border: Border(
        //   top: BorderSide(
        //     color: Colors.black,
        //     width: 10,
        //   ),
        //   right: BorderSide(
        //     color: Colors.black,
        //     width: 10,
        //   ),
        //   bottom: BorderSide(
        //     color: Colors.black,
        //     width: 10,
        //   ),
        //   left: BorderSide(
        //     color: Colors.black,
        //     width: 10,
        //   ),
        // ),
        border: Border.all(
          width: 10,
          color: Colors.blue
        ),
        borderRadius: BorderRadius.only(
       topLeft:Radius.circular(30)
        ),
        color: Color.fromARGB(255, 71, 130, 157),
        gradient: LinearGradient(//设置渐变后背景色失效
          colors: [
            Colors.blue,
            Colors.white
          ]
        )
      ),
      alignment: Alignment.center,
      transform: Matrix4.rotationZ(-0.1),

    );
  }
}