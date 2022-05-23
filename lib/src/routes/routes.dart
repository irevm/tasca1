import 'package:flutter/material.dart';
import 'package:tasca1/src/pages/home_page.dart';
import 'package:tasca1/src/pages/alert_page.dart';
import 'package:tasca1/src/pages/avatar_page.dart';
 
Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
    '/'         : (BuildContext context) => HomePage(),
    'alert'     : (BuildContext context) => AlertPage(),
    'avatar'    : (BuildContext context) => AvatarPage(),
  };
}