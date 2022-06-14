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
    return ShareDataWidget(
      num:_nums,
      child:Center(
        child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            //child: Text('$_nums'),
            //跨组件调用
            child: MyCounter(),
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

      ) ,
      );
    
    
  }
}
class MyCounter extends StatefulWidget {
  MyCounter({Key? key}) : super(key: key);

  @override
  State<MyCounter> createState() => _MyCounterState();
}

class _MyCounterState extends State<MyCounter> {
  @override
  Widget build(BuildContext context) {
    return Text(ShareDataWidget.of(context)!.num.toString());
  }
}


class ShareDataWidget extends InheritedWidget {
final Widget child;
  final int num;
  ShareDataWidget({Key? key,required this.child,required this.num}) : super(key: key, child: child);

  

  static ShareDataWidget? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ShareDataWidget>();
  }

  @override
  bool updateShouldNotify(ShareDataWidget oldWidget) {
    return true;
  }
}