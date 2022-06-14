import 'package:flutter/material.dart';



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
      body: SingleChildScrollViewDemo (),
    );
  }
}

class SingleChildScrollViewDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
                OutlinedButton(
                onPressed:(){}, 
                child: Text("111")
                ),
                OutlinedButton(
                onPressed:(){}, 
                child: Text("222")
                ),
                OutlinedButton(
                onPressed:(){}, 
                child: Text("333")
                ),
                OutlinedButton(
                onPressed:(){}, 
                child: Text("444")
                ),
                OutlinedButton(
                onPressed:(){}, 
                child: Text("555")
                ),
              OutlinedButton(
                  onPressed:(){},
                  child: Text("555")
              ),
              OutlinedButton(
                  onPressed:(){},
                  child: Text("555")
              ),
            ],
          ),
        )
      ],
      
    );
  }
}