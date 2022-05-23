import 'package:flutter/material.dart';

Icon getIcon(String nomIcona){
  return Icon(_icons[nomIcona],color: Colors.blue);

}

final _icons = <String, IconData>{
  'add_alert' : Icons.add_alert,
  'accessibility' : Icons.accessibility,
  'folder_open' : Icons.folder_open,
  'donut_large' : Icons.donut_large,
  'input' : Icons.input,
  'tune' : Icons.tune,
  'list' : Icons.list
};

