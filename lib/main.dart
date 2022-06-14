import 'package:flutter/material.dart';
//import '01_basic/01_Hello.dart';
//import '01_basic/02_Text.dart';
//import '02_layout/01_Containet.dart';
//import '02_layout/02_Column_Row.dart';
//import '02_layout/03_Flex.dart';
//import '02_layout/04_Wrap.dart';
//import '02_layout/05_Stack.dart';
//import '02_layout/06_Card.dart';
//import '03_button/01_Button.dart';
//import '04_image/01_image.dart';
//import '05_list/01_SingleChildScrollView.dart';
//import '05_list/02_ListView.dart';
//import '05_list/03_GridView.dart';
//import '05_list/04_GridView.dart';
//import '06_others/01_Cupertino.dart';
//import '07_third.party/01_dio.dart';
import '07_third.party/02_flutter_swiper.dart';
//import '07_third.party/03_shared_preferences.dart';
//import '08_state/01_StatefulWidget.dart';
//import '08_state/02_DataTable.dart';
//import '08_state/03_InheritedWidget.dart';
//import '08_state/04_lifecycle.dart';
//import '08_state/05_provider.dart';
//import '09_navigation/01_anonymous.dart';
//import '09_navigation/02_namedRoute.dart';
//import '09_navigation/03_onGenerateRoute.dart';
//import '09_navigation/04_arguments.dart';
//import '09_navigation/05_drawer.dart';
//import '09_navigation/06_BottomNavigatorBar.dart';
//import '10_form/01_switch.dart';
//import '10_form/02_checkbox.dart';
//import '10_form/03_TextField.dart';
//import '10_form/04_Form.dart';
//import 'routes/Routes.dart';

void main() {
  runApp ( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
// initialRoute: '/',     //初始化的时候加载的路由
// onGenerateRoute: onGenerateRoute,
     //声明命名路由
    //  routes: {
    //    'home':(context) => Home(),
    //    'product':(context) => Product(),
    //    'productdetali':(context) => ProductDetali()
    //  },
    //  theme: ThemeData(fontFamily: 'Square_Peg'),   
    //
                  
    // initialRoute: 'home',
    // onUnknownRoute: (RouteSettings settings)=>MaterialPageRoute(
    //   builder: (context) =>UnKnow()
    // ),
    // onGenerateRoute: (RouteSettings settings){
    //   print('当前路径:'+settings.toString());
    //   if(settings.name=='/'){
    //     return MaterialPageRoute(builder: (context)=>Home());
    //   }
    //   if(settings.name=='/product'){
    //     return MaterialPageRoute(builder: (context)=>Product());
    //   }
    //   return MaterialPageRoute(builder: (context) =>UnKnow());  
    //   },
      debugShowCheckedModeBanner: false,
    );
  }
}



