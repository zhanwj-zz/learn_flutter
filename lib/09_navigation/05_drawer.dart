import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('drawer'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  HomePage(),
      drawer: DrawerList(),
      
    ); 
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('home'),
    );
  }
}
class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0),//边距调为0，让整个图片填充满
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('jiie'), 
            accountEmail: Text('1445985548@qq.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                image:AssetImage('images/1.jpg'),
                fit: BoxFit.cover//把图片合身覆盖填充满不留空白
              )
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/3.jpg')
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title:Text ('设置'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(thickness: 3,),
          ListTile(
            leading: Icon(Icons.person),
            title:Text ('我的'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(thickness: 3,),
          ListTile(
            leading: Icon(Icons.person),
            title:Text ('搜索'),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          Divider(thickness: 3,),
          ListTile(
            leading: Icon(Icons.person),
            title:Text ('回退'),
            onTap: ()=>Navigator.pop(context),
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          AboutListTile(
            child: Text('关于软件'),
            applicationName: '你的应用版本是',
            applicationVersion: '1.0.0',
            icon: CircleAvatar(
              child: Text('关于'),
            ),
            applicationLegalese: '法律协议',
            aboutBoxChildren: [
              Text('1.'),
              Text('2.')
            ],
          )
        ],
      ),
    );
  }
}