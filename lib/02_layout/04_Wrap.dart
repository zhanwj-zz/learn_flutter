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
      body: WrapDemo(),
    );
  }
}

class WrapDemo extends StatelessWidget {
  List<String> _list=['曹操','司马懿','曹植','曹仁','张辽','许诸'];

  List<Widget> _weiguo(){
    return _list.map((e) => Chip(
avatar:CircleAvatar(
             backgroundColor: Colors.blue,
             child: Text("魏"),
),
label: Text(e),
    )
    ).toList();
  }


  @override

Widget build(BuildContext context){
    return Column(
      children: [
        Wrap(
          children: _weiguo()

        ),
        Wrap(
          children: [
            Chip(
              avatar: CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text("蜀"),
              ),
              label: Text("刘备"),
            ),
          ],
        )
      ],

    );
}
}