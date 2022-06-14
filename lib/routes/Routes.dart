import 'package:flutter/material.dart';
import '../pages/Tabs.dart';
import '../pages/Device.dart';
import '../pages/Localizations.dart';
import '../pages/Auth.dart';

//配置路由
final Map<String,Function> routes={
      '/':(context)=>Tabs(),
      '/device':(context)=>DevicePage(),        
      '/localizations':(context)=>LocalizationsPage(),      
      '/auth':(context)=>AuthPage(),        
};

//固定写法
var onGenerateRoute=(RouteSettings settings) {
      // 统一处理
      final String? name = settings.name; 
      final Function? pageContentBuilder = routes[name];
      if (pageContentBuilder != null) {
        if (settings.arguments != null) {
          final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context, arguments: settings.arguments));
          return route;
        }else{
            final Route route = MaterialPageRoute(
              builder: (context) =>
                  pageContentBuilder(context));
            return route;
        }
      }
};