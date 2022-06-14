import 'package:flutter/material.dart';
class LocalizationsPage extends StatefulWidget {
  LocalizationsPage({Key? key}) : super(key: key);

  @override
  _LocalizationsPageState createState() => _LocalizationsPageState();
}

class _LocalizationsPageState extends State<LocalizationsPage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      appBar: AppBar(
        title: Text("国际化演示"),
      ),
      body: ListView(

        children: <Widget>[

          SizedBox(height: 100),

          TextField(
              decoration: InputDecoration(
                 hintText: '请输入内容',
              )
          )
        ],
      ),
    );
  }
}