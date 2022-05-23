import 'package:flutter/material.dart';
 
class AlertPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pàgina Alert'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Botó alerta!'),
          style: ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            shape: StadiumBorder()
          ),
          onPressed: () => _mostrarAlert(context),
        ),
      ),

      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.arrow_back),
      //   onPressed: (){
      //     Navigator.pop(context);
      //   }
      // ),
    );
  }
}

void _mostrarAlert(BuildContext context){
  showDialog(
    context: context,
    barrierDismissible: true,
    builder: (context){
      return AlertDialog(
        title: Text('Títol alerta'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Aquest és el contingut de l\'alerta personalitzable.'),
            FlutterLogo(size: 50.0)
          ],
        ),
        actions: [
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Cancel·lar')),
          TextButton(onPressed: () => Navigator.of(context).pop(), child: Text('Ok')),
        ],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),  
      );
    }    
  );
}

