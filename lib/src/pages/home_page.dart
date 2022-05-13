import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Components'),
      ),
      body: _llista(),
    );
  }
}

Widget _llista() {
  return ListView(
    children: _llistaElements(),
  );
}

List<Widget> _llistaElements(){
  return [];
}