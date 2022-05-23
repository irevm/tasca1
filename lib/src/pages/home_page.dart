import 'package:flutter/material.dart';
import 'package:tasca1/src/providers/menu_providers.dart';
import 'package:tasca1/src/utils/icono_string_util.dart';

import 'alert_page.dart';

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
 // menuProvider.CarregarDades()
  return FutureBuilder(
    future: menuProvider.CarregarDades(),
    initialData: [], // Aquest seria el valor per defecte que s'envia a snapshot.data
    builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
      print('builder');
      print(snapshot.data);
      return ListView(
        children: _llistaElements(context, snapshot.data),
      );
    },
  );
}

List<Widget> _llistaElements(BuildContext context, List<dynamic>? data ) {
  final List<Widget> elements =[];
  data?.forEach((element) {
    final widgetTemp = ListTile(
      title: Text(element['texte']),
      leading: getIcon(element['icona']),
      trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
      onTap: (){
        final route = MaterialPageRoute(builder: (context) {
          return AlertPage();
        });

        //Navigator.push(context, route);
        Navigator.pushNamed(context, element['ruta']);

      },
    );
    elements..add(widgetTemp)
            ..add(Divider());
  });
  return elements;
}
