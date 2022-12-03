import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String argumens =
        ModalRoute.of(context)!.settings.arguments.toString();
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text(argumens)),
    );
  }
}
