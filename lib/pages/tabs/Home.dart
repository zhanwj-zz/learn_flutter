import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(       
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
            RaisedButton(
              child: Text('Device 或者设备信息'),
              onPressed: (){
                  Navigator.pushNamed(context, '/device');
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('国际化演示'),
              onPressed: (){
                  Navigator.pushNamed(context, '/localizations');
              },
            ),
            SizedBox(height: 20),
            RaisedButton(
              child: Text('拍照 上传'),
              onPressed: (){
                  Navigator.pushNamed(context, '/imagePicker');
              },
            ),      
          SizedBox(height: 20),
             RaisedButton(
              child: Text('Socket.io即时通讯'),
              onPressed: (){
                  Navigator.pushNamed(context, '/socket');
              },
            ),  
            SizedBox(height: 20),
            RaisedButton(
              child: Text('指纹识别认证'),
              onPressed: (){
                  Navigator.pushNamed(context, '/auth');
              },
            ),     
            
        ]
      ),
    );
  }
}
