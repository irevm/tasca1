import 'package:flutter/material.dart';
import 'package:tasca1/src/pages/animated_container.dart';
import 'package:tasca1/src/pages/card_page.dart';
import 'package:tasca1/src/pages/home_page.dart';
import 'package:tasca1/src/pages/alert_page.dart';
import 'package:tasca1/src/pages/avatar_page.dart';
import 'package:tasca1/src/pages/input_page.dart';
import 'package:tasca1/src/pages/listview_page.dart';
import 'package:tasca1/src/pages/slider_page.dart';
 
Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
    '/'         : (BuildContext context) => HomePage(),
    'alert'     : (BuildContext context) => AlertPage(),
    'avatar'    : (BuildContext context) => AvatarPage(),
    'card'      : (BuildContext context) => CardPage(),
    'animatedContainer' : (BuildContext context) => AnimatedContainerPage(),
    'inputs' : (BuildContext context) => InputPage(),
    'slider' : (BuildContext context) => SliderPage(),
    'list' : (BuildContext context) => LlistaPage(),
  };
}