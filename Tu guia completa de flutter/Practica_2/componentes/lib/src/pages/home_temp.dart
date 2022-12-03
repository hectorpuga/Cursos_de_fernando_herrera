import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes Temp'),
        ),
        body: ListView(children: _crearItemsCorta()));
  }

  List<Widget> _creaItems() {
    List<Widget> lista = [];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );
      lista
        ..add(tempWidget)
        ..add(const Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    var widgets = opciones.map((item) {
      return Column(children: <Widget>[
        ListTile(
            title: Text(item + "!"),
            subtitle: const Text("Cualquier cosa"),
            leading: const Icon(Icons.account_balance_wallet),
            trailing: const Icon(Icons.keyboard_arrow_right),
            onTap: () {}),
        const Divider()
      ]);
    }).toList();
    return widgets;
  }
}
