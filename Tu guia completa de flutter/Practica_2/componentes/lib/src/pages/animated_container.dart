import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Container")),
      body: Center(
          child: AnimatedContainer(
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
        width: _width,
        height: _height,
        decoration:
            BoxDecoration(color: _color, borderRadius: _borderRadiusGeometry),
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _canbiarForma,
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

  void _canbiarForma() {
    setState(() {
      final random = Random();
      _color = Color.fromRGBO(
          random.nextInt(255), random.nextInt(255), random.nextInt(255), 1);
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _borderRadiusGeometry =
          BorderRadius.circular(random.nextInt(255).toDouble());
    });
  }
}
