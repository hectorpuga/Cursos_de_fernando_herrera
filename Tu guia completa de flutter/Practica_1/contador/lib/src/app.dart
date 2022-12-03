import 'package:contador/src/pages/contador_page.dart';
import 'package:flutter/material.dart';
// Nosotros importamos
import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: Center(child: ContadorPage()));
  }
}
