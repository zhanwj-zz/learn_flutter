import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulWidget'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  MyState(),
      
    ); 
  }
}

class MyState extends StatefulWidget {
  
  const MyState({Key? key}) : super(key: key);
  

  @override
  State<MyState> createState() => _MyStateState();
}

class _MyStateState extends State<MyState> {
  int _nums=0;

  void _incrementCounter(){
    setState(() {
      _nums++;
    });
  }
  void _decrementCounter(){
    setState(() {
      _nums--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return
     Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text('$_nums'),
            ),
            ElevatedButton(
              onPressed: _incrementCounter,
              child: Icon(Icons.add)
              ),
               ElevatedButton(
              onPressed: _decrementCounter,
              child: Icon(Icons.delete)
              )
        ],
      ),

    );
    
  }
}

