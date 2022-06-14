
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: TextFieldDemo (),
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  TextFieldDemo({Key? key}) : super(key: key);

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  String? phone;
  String? password;
  String? description;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          TextField(
            autofocus: true,
            keyboardType: TextInputType.phone,
            
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.phone),
              labelText: '手机号',
              hintText: ('请输入手机号')
            ),
            maxLength: 11,
            onChanged: (value){
              setState(() {
                phone=value;
              });
            },
          ),
          TextField(
            obscureText: true,//隐藏输入内容
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.code),
              labelText: '密码',
              hintText: ('请输入密码'),
              hintStyle: TextStyle(
                color: Colors.pink,
                fontSize: 13
              ),
              //获取焦点时，底部边框颜色
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.yellow
                )
              ),
              //正常情况底部边框的颜色
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.cyan
                )
              )
            ),
            
            onChanged: (value){
              setState(() {
                password=value;
              });
            },
          )
        ],
      ),
    );
  }
}