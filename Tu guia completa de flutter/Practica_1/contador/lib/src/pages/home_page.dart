import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estilo = const TextStyle(fontSize: 30);

  const HomePage({Key? key}) : super(key: key);

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
            Text("Numero de clicks:", style: estilo),
            Text("0", style: estilo)
          ])),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
    );
  }
}
