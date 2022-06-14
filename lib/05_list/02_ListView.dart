import 'package:flutter/material.dart';



class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('list'),
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  ListViewDemo(),
      
    );
  }
}

class ListViewDemo extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListViewBasic(),
          ListViewHorizontal(),
          ListViewBuildDemo(),
          ListViewSeperated()
        ],
      ),      
    );
  }
}

class ListViewBasic extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,

      child: ListView(
        scrollDirection: Axis.vertical,
        children: [
          ListTile(
            leading: Icon(Icons.abc,size: 50,),
            title: Text("ainiya"),
            subtitle: Text("zhenzhen"),//子标题
            trailing: Icon(Icons.abc_sharp),//尾部
          ),
          ListTile(
            leading: Icon(Icons.abc,size: 50,),
            title: Text("bobobo"),
            subtitle: Text("zhenzhen"),//子标题
            trailing: Icon(Icons.abc_sharp),//尾部
          ),
          ListTile(
            leading: Icon(Icons.abc,size: 50,),
            title: Text("baozhu"),
            subtitle: Text("zhenzhen"),//子标题
            trailing: Icon(Icons.abc_sharp),//尾部
            selected: true,
            selectedTileColor: Color.fromARGB(255, 169, 184, 196),
          ),
          ListTile(
            leading: Icon(Icons.abc,size: 50,),
            title: Text("baozhu"),
            subtitle: Text("zhenzhen"),//子标题
            trailing: Icon(Icons.abc_sharp),//尾部
          ),
          ListTile(
            leading: Icon(Icons.abc,size: 50,),
            title: Text("baozhu"),
            subtitle: Text("zhenzhen"),//子标题
            trailing: Icon(Icons.abc_sharp),//尾部
          ),
        ],
      ),
      
    );
  }
}

class ListViewHorizontal extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 150,
            color: Colors.greenAccent,
          ),
          Container(
            width: 150,
            color: Colors.amberAccent,
          ),
          Container(
            width: 150,
            color: Colors.indigoAccent,
          ),
          Container(
            width: 150,
            color: Colors.greenAccent,
          )
        ],
      ),
    );

  }
}

class ListViewBuildDemo extends StatelessWidget {
  final List<Widget> users =new List<Widget>.generate(20, (index) => OutlinedButton(
    onPressed:(){}, 
    child: Text("姓名$index")
    ));


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder:(context,index ){
          return users[index];
        },
        itemCount: users.length,
        itemExtent: 40,
        padding: EdgeInsets.all(10),
         ),
        
    );
  }
}

 class ListViewSeperated extends StatelessWidget {
 final List<Widget> products=List.generate(20, (index) => 
 ListTile(
   leading: Image.asset('images/bg1.jpg',
   height: 100,
   width: 100,),
   title: Text("商品标题$index"),
   subtitle: Text("子标题"),
   trailing:Icon(Icons.abc) ,

 ));

  @override
  Widget build(BuildContext context) {
    Widget dividerOdd = Divider(
      color: Color.fromARGB(255, 120, 133, 143),
              thickness: 2,
    );
     Widget dividerEven = Divider(
      color: Color.fromARGB(255, 50, 127, 186),
              thickness: 2,
    );
    return Column (
      children: [
        ListTile( 
          title: Text("商品列表"),
        ),
        Container(
          height: 200,
          child: ListView.separated(
          itemBuilder: (context, index) {
            return products[index];
          },
          //分割器的构造器
          separatorBuilder: (context,index){
            return index%2==0? dividerEven:dividerOdd;
          }, 
          itemCount:products.length,
          )
      
        ),
        
  ],
    );
  }
}