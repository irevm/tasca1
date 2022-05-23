import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
           SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
          _cardTipus1(),
          SizedBox(height: 30.0),
          _cardTipus2(),
          SizedBox(height: 30.0),
        ],
      )
    );
  }
}

Widget _cardTipus1() {
  return Card(
    elevation: 10.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    child: Column(
      children: [
        ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text('Això és un títol'),
          subtitle: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.'),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(onPressed: (){}, child: Text('OK')),
            TextButton(onPressed: (){}, child: Text('Cancel·lar')),
          ],
        )
     ],
   ),
 );
}

Widget _cardTipus2() {
  final targeta = Card(
    //clipBehavior: Clip.antiAlias,
    child: Column(
      children: [
        Image(
          image: NetworkImage('https://picsum.photos/seed/picsum/400/200')
        ),
        Container(
          child: Text('Títol de la imatge'),
          padding: EdgeInsets.all(10),
        ),
      ],
    ),
  );

  return Container(
    child: ClipRRect(
      child: targeta,
      borderRadius: BorderRadius.circular(30.0),
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(30.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10.0,
          spreadRadius: 2.0,
          offset: Offset(2.0,10.0)
        )
      ],
      color: Colors.white
    ),
  );

}


