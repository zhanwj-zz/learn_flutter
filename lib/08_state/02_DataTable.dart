
import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StatefulWidget'),
        leading: const Icon(Icons.menu),
        actions: [
          const Icon(Icons.settings)
        ],
        elevation: 0.0,
        centerTitle: true,
      ),
      body:  name(),
      
    ); 
  }
}
class User{
String name;
int age;
bool selected;

User(this.name,this.age,{this.selected=false});
}

var _sortAcending=true;

class name extends StatefulWidget {
  name({Key? key}) : super(key: key);

  @override
  State<name> createState() => _nameState();
}

class _nameState extends State<name> {
  List<User> data=[
    User('张三', 18),
    User('李四', 30,selected: true),
    User('王五', 288),
  ];

  List<DataRow>_getUserRow(){
  List<DataRow> datarow=[];  
    for(int i=0;i<data.length;i++){
        datarow.add(
          DataRow(
            selected: data[i].selected,
            onSelectChanged: (selected){
              setState(() {
                data[i].selected=selected??false;
              });
            },
            cells: [
            DataCell(Text('${data[i].name}')),
            DataCell(Text('${data[i].age}')),
            DataCell(Text('男')),
            DataCell(Text('------')),
            ]
            )
        );
      }
    return datarow;
  }
  @override
  Widget build(BuildContext context) {
  return Container(
    child: SingleChildScrollView(
      child: DataTable(
        sortColumnIndex: 1,
        sortAscending: _sortAcending,
        columns: [
           DataColumn(label:Text('姓名')),
           DataColumn(
             label:Text('年龄'),
             numeric: true,
             onSort: (int sortColumnIndex,bool sortAscending){
               setState(() {
                 _sortAcending=sortAscending;
                 if(sortAscending){
                   data.sort((a, b) => a.age.compareTo(b.age));
                 }else {
                   data.sort((a, b) => b.age.compareTo(a.age));
                 }
               });
             }
             ),
           DataColumn(label:Text('性别')),
           DataColumn(label:Text('简介')),

          ],
          rows:_getUserRow(),
          //  [
          //  DataRow
          //    cells:[
          //    DataCell(Text('张三')),
          //    DataCell(Text('18')),
          //    DataCell(Text('男')),
          //    DataCell(Text('法外狂徒')),
          //    ]
          //    ),
          //    DataRow(
          //    cells:[
          //    DataCell(Text('张三')),
          //    DataCell(Text('18')),
          //    DataCell(Text('男')),
          //    DataCell(Text('法外狂徒')),
          //    ]
          //    ),
          //   ],
      ),
    ),
  );
  }
}