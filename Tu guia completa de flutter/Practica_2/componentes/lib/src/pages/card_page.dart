import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Cards')),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: <Widget>[
            _cardTipo1(),
            const SizedBox(height: 30.0),
            _cardTipo2()
          ],
        ));
  }
}

Widget _cardTipo2() {
  final card = Container(
      //clipBehavior: Clip.antiAlias,
      child: Column(
    children: <Widget>[
      const FadeInImage(
        placeholder: AssetImage('assets/17.1 jar-loading.gif'),
        image: NetworkImage(
            "http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg"),
        fadeInDuration: Duration(milliseconds: 200),
        height: 300,
        fit: BoxFit.cover,
      ),
      // Image(
      //   image: NetworkImage(
      //     "http://www.solofondos.com/wp-content/uploads/2016/04/mountain-landscape-wallpaper.jpg")),
      Container(
          padding: const EdgeInsets.all(10.0),
          child: const Text('no tengo idea de que poner'))
    ],
  ));

  return Container(
      child: ClipRRect(
        child: card,
        borderRadius: BorderRadius.circular(30.0),
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 10.0))
          ]));
}

Widget _cardTipo1() {
  return Card(
    elevation: 1.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
    child: Column(children: <Widget>[
      const ListTile(
        title: Text('Soy el titulo de esta tarjeta'),
        subtitle: Text('hola'),
        leading: Icon(
          Icons.photo_album,
          color: Colors.blue,
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          TextButton(onPressed: () {}, child: const Text('Cancelar')),
          TextButton(onPressed: () {}, child: const Text('Ok'))
        ],
      ),
    ]),
  );
}
