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
      body: FlexDemo(),
    );
  }
}

class FlexDemo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              color: Color.fromRGBO(3, 169, 244, 1),
              height: 50,
              width:50,
            ),
            Expanded(child: Container(
             color: Colors.black,
             height: 50,
            ),
            )
          ],
        ),
        Flex(direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        textDirection: TextDirection.rtl,
        children: [
          Icon(Icons.access_alarm,size:50),
          Icon(Icons.abc_outlined,size: 50,),
          Icon(Icons.account_tree,size: 50,),
          Icon(Icons.alarm_add,size: 50,),
        ],
        ),
        Flex(direction: Axis.horizontal,
        children: [
          Expanded(child: Container(
            color: Colors.blue,
            height: 50,
          ),
          flex: 1,
          ),
          Expanded(child: Container(
            color: Color.fromARGB(255, 177, 66, 66),
            height: 50,

          ),
          flex: 1,
          ),
        ],
        ),
        Container(
          height: 100,
          margin: EdgeInsets.all(50),
          child:  Flex(direction: Axis.vertical,
        children: [
          Expanded(child: Container(
            color: Colors.blue,
            height: 50,
          ),
          flex: 1,
          ),
          Expanded(child: Container(
            color: Color.fromARGB(255, 198, 92, 92),
            height: 50,

          ),
          flex: 1,
          ),
        ],
        ),
        )
      ],
    );
  }
}