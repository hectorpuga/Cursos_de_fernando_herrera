import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/Providers/Ui_provider.dart';
import 'package:qr_reader/Providers/scan_list_provider.dart';
import 'package:qr_reader/Screen/direcciones_screen.dart';
import 'package:qr_reader/Screen/mapas_screen.dart';
import 'package:qr_reader/Widgets/custom_navigatorbar.dart';
import 'package:qr_reader/Widgets/scan_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text('Historial'),
        actions: [
          IconButton(
              icon: Icon(Icons.delete_forever),
              onPressed: () {
                final scanProvider =
                    Provider.of<ScanListProvider>(context, listen: false);
                scanProvider.borrarTodos();
              })
        ],
      ),
      body: const _HomePageBody(),
      bottomNavigationBar: CustomNavigatorBar(),
      floatingActionButton: ScanButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);

    final currentIndex = uiProvider.selectedMenuOptget;

    // Usar el ScanListProvider

    final scanProvider = Provider.of<ScanListProvider>(context, listen: false);

    switch (currentIndex) {
      case 0:
        scanProvider.cargarScanPorTipo('geo');
        return const MapasScreen();

      case 1:
        scanProvider.cargarScanPorTipo('http');
        return const DireccionesScreen();

      default:
        return const MapasScreen();
    }
  }
}
