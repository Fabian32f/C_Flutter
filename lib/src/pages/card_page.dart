import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[_cardTipo1(), SizedBox(height: 30.0), _cardTipo2()],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(children: <Widget>[
        const ListTile(
          leading: Icon(Icons.photo_album, color: Colors.blue),
          title: Text("Soy el tirulo de esta Targeta"),
          subtitle: Text("La gente desperdicia mucho tiempo, y luego quieren más. Desean más horas en sus días, más días en sus años, más años en sus vidas"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            TextButton(
              child: Text("Cancelar"),
              onPressed: () {},
            ),
            TextButton(
              child: Text("Ok"),
              onPressed: () {},
            )
          ],
        )
      ]),
    );
  }

  Widget _cardTipo2() {
    final card = Container(
      //  clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[
          FadeInImage(
            image: NetworkImage(
                'https://media.baamboozle.com/uploads/images/36822/1602508155_97832'),
            placeholder: AssetImage('assets/cargando.gif'),
            height: 250.0,
            fit: BoxFit.cover,
          ),
          Container(padding: EdgeInsets.all(10.0), child: Text("¿Acaso el único propósito de la hoja es caer?"))
        ],
      ),
    );
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              spreadRadius: 2.0,
              offset: Offset(2.0, 10.0),
            )
          ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
