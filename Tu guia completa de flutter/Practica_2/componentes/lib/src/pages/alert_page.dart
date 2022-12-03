import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  const AlertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Alert Page'),
        ),
        body: Center(
            child: ElevatedButton(
          onPressed: () => _mostrarAlert(context),
          child: const Text(
            "Mostrar Alerta",
            style: TextStyle(color: Colors.blue),
          ),
          style: ElevatedButton.styleFrom(
              primary: Colors.red, shape: const StadiumBorder()),
        )),
        floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {
              Navigator.pop(context);
            }));
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            title: const Text("Titulo"),
            content: Column(
                mainAxisSize: MainAxisSize.min,
                children: const <Widget>[
                  Text("Este es el contenido de la caja de alerta"),
                  FlutterLogo(size: 100)
                ]),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text("Cancelar")),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Ok"))
            ],
          );
        });
  }
}
