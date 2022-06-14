
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    //创建provider(注册数据模型)
    return ChangeNotifierProvider(
      create: (BuildContext context) => new LikesModel(),
      child: Scaffold(
      appBar: AppBar(
        title: Text('Provider'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body: const MyHomePage(),
      
    ),
      );
    
  }
}

//第一步创建数据模型
class LikesModel extends ChangeNotifier{
  int _counter=0;

  int get counter => _counter;

  incrementCounter(){
    _counter++;

    //通过ui更新
    notifyListeners();
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            '${context.watch<LikesModel>().counter}'
            ),
            TextButton(
              onPressed: Provider.of<LikesModel>(context).incrementCounter, 
              child: Icon(Icons.thumb_up)
              )
        ],
      ),
    );
  }
}