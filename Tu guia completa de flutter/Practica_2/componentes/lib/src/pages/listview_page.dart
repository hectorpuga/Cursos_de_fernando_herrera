import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  const ListaPage({Key? key}) : super(key: key);

  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {
  List<int> _listaNumero = [];
  bool _isLoading = false;
  ScrollController _scrollController = new ScrollController();
  int _ultimoItem = 0;
  @override
  void initState() {
    super.initState();
    _agregar10();

    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        // _agregar10();

        _fetchData();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listas'),
        ),
        body: Stack(children: <Widget>[_crearLista(), _crearLoading()]));
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: obtenerPagina1,
      child: ListView.builder(
          controller: _scrollController,
          itemCount: _listaNumero.length,
          itemBuilder: (context, index) {
            final imagen = _listaNumero[index];
            return FadeInImage(
                placeholder: const AssetImage('assets/17.1 jar-loading.gif'),
                image: NetworkImage(
                    'https://picsum.photos/500/300/?image=$imagen'));
          }),
    );
  }

  Future<Timer> obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    await new Timer(duration, () {
      _listaNumero.clear();
      _ultimoItem++;
      _agregar10();
    });
    return Future.delayed(duration);
  }

  void _agregar10() {
    for (var i = 1; i < 10; i++) {
      _ultimoItem++;
      _listaNumero.add(_ultimoItem);
      setState(() {});
    }
  }

  Future<Timer> _fetchData() async {
    _isLoading = true;
    setState(() {});
    final duration = new Duration(seconds: 2);
    return Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP() {
    _isLoading = false;
    _scrollController.animateTo(_scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn, duration: Duration(milliseconds: 250));
    _agregar10();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  Widget _crearLoading() {
    if (_isLoading) {
      return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CircularProgressIndicator()],
            ),
            SizedBox(
              height: 15.0,
            )
          ]);
    } else {
      return Container();
    }
  }
}
