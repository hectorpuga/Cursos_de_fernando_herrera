import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  const ContadorPage({Key? key}) : super(key: key);

  @override
  createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estilo = const TextStyle(fontSize: 30);
  int _contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Mi app"),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Text("Numero de clicks:", style: _estilo),
              Text(_contador.toString(), style: _estilo)
            ])),
        floatingActionButton: botones());
  }

  Widget botones() {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
      const SizedBox(
        width: 30,
      ),
      FloatingActionButton(
          onPressed: () {
            setState(() {
              _contador = 0;
            });
          },
          child: const Icon(Icons.exposure_zero)),
      const Expanded(
        child: SizedBox(),
      ),
      FloatingActionButton(
          onPressed: () {
            setState(() {
              _contador--;
            });
          },
          child: const Icon(Icons.remove)),
      const SizedBox(
        width: 5,
      ),
      FloatingActionButton(
          onPressed: () {
            setState(() {
              _contador++;
            });
          },
          child: const Icon(Icons.add))
    ]);
  }
}
