import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Avatar Page'),
          actions: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10.0),
              child: const CircleAvatar(
                child: Text("Sl"),
                backgroundColor: Colors.brown,
              ),
            ),
            const CircleAvatar(
              child: Text("Sl"),
              backgroundImage: NetworkImage(
                  "https://www.cinemascomics.com/wp-content/uploads/2020/08/goku-dragon-ball-super-ultra-instinto.jpg"),
            )
          ],
        ),
        body: const Center(
            child: FadeInImage(
          placeholder: AssetImage('assets/17.1 jar-loading.gif'),
          image: NetworkImage(
              'https://pics.filmaffinity.com/Dragon_Ball_Z_Serie_de_TV-697937148-mmed.jpg'),
          fit: BoxFit.fill,
        )));
  }
}
