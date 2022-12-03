import 'package:designs/src/screens/headers_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'src/screens/animaciones_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: AnimacionesPage());
  }
}
