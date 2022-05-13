import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  //const name({Key? key}) : super(key: key);
  final elements =['Element 1','Element 2','Element 3','Element 4'];

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Components Temp'),
      ),
      body: ListView(
        children: _crearElementsCurt()
      )
    );
  }

  List<Widget> _crearElements(){
    //Aquesta declaració és la nova degut al null safety
    List<Widget> llista = [];

    for (String element in elements){
      final tempWidget = ListTile(
        title: Text(element)
      );
      llista.add(tempWidget);
      llista.add(Divider());
    }

    return llista;
  }

  List<Widget> _crearElementsCurt(){
    
    var widgets = elements.map((element){
      return Column(
        children: [
          ListTile(
            title: Text(element+"!"),
            subtitle: Text("Subtítol"),
            //leading: ,
            //trailing: ,
            //onTap: ,
          ),
        ],
      );
    });

    return widgets.toList();
  }

  
}