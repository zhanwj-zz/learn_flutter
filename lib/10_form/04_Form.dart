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
      body: FormDemo (),
    );
  }
}

class FormDemo extends StatefulWidget {
  FormDemo({Key? key}) : super(key: key);

  @override
  State<FormDemo> createState() => _FormDemoState();
}

class _FormDemoState extends State<FormDemo> {
  final GlobalKey<FormState> _formkey=GlobalKey<FormState> ();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          Form(
            key: _formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    hintText: '手机号'
                  ),
                  validator: (value){
                    RegExp reg=new RegExp(r'^\d{11}$');
                    if(!reg.hasMatch(value!)){
                      return '手机号非法';
                    }
                    return null;
                  }
                )
              ],
            )
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed:() {
                      if(_formkey.currentState!.validate()){
                        print('提交成功');
                      }
                    },
                    child: Text('提交')
                    )
                  )
              ],
            )
        ],
      ),
    );
  }
}