import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

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
      body: SwitchDemo (),
    );
  }
}

class SwitchDemo extends StatefulWidget {
  SwitchDemo({Key? key}) : super(key: key);

  @override
  State<SwitchDemo> createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
   bool _switchvalue=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          ListTile(
            leading: Switch(
              value: _switchvalue,
              onChanged:(bool? val){
                
                setState(() {
                _switchvalue=val!;
                });
              } ,
            ),
            title: Text('此时的开关状态为：${_switchvalue == true ?"选中" :"未选中"}'),
          ), ListTile(
            leading: CupertinoSwitch(
              value: _switchvalue,
              onChanged:(bool val){

                setState(() {
                  _switchvalue=val;
                });
              } ,
            ),
            title: Text('IOS风格的开关'),
          ),
        ],
      ),
    );
  }
}