import 'package:flutter/material.dart';


class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('层叠布局'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: StackDemo(),
    );
  }
}

class StackDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage('https://img.alicdn.com/imgextra/i4/3783308512/TB2LdxNEr1YBuNjSszhXXcUsFXa_!!3783308512-0-beehive-scenes.jpg_180x180xzq90.jpg_.webp'),
            radius: 200,
          ),
          //绝对定位
          Positioned(
            child:Container(
              color: Colors.brown,
              padding: EdgeInsets.all(20),
              child: Text("热销中",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
              ),
              
            ) ,
            top: 20,
            right: 20,
            ),
            Text("椅子",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black
              ),
            ),
        ],
      ),
    );
  }
}