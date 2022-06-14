import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('switch'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: CheckBoxDemo (),
    );
  }
}

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key? key}) : super(key: key);

  @override
  State<CheckBoxDemo> createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _m=true;
  bool _f=false;
  bool _c=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Checkbox(
            onChanged:(value) {
              setState(() {
                _m=value!;
              });
        } ,
            value: _m,
          ),
          title: Text('男'),
        ),
        CheckboxListTile(
          value: _c, 
          onChanged: (value){
            setState(() {
              _c=value!;
            });
          },
          title: Text('啦啦啦'),
          subtitle: Text('嘻嘻嘻'),
          
          )
      ],
    );
  }
}