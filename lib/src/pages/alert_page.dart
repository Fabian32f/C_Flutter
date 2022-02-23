import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("!!Alert Page!!"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("Mostrar Alerta"),
          onPressed: () => _mostrarAler(context),
          style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 129, 9, 9), shape: StadiumBorder()),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_location),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAler(BuildContext context) {
    showDialog(
        context: context,   
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0)),
            title: Text("Título:"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[Text("Este es el contenido de la caja de la Alerta"), FlutterLogo(size: 100.0)],
            ),
            actions: <Widget>[
              TextButton(
                child: Text("Cancelar"),
                onPressed: () => Navigator.of(context).pop(),
              ),
              TextButton(
                child: Text("Ok"),
                onPressed: () => Navigator.of(context).pop(),
              )
            ],
          );
        });
  }
}
