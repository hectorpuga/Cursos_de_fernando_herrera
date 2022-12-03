import 'package:flutter/material.dart';
import 'package:preferences_app/Providers/team_provider.dart';
import 'package:preferences_app/Share_preferences/preferences.dart';
import 'package:preferences_app/Widgets/widgets.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const String routerName = 'settings';
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final themprovider = Provider.of<ThemeProvider>(context, listen: true);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Ajustes',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
            const Divider(),
            SwitchListTile.adaptive(
              value: Preferences.isDarkmode,
              onChanged: (value) {
                Preferences.isDarkmode = value;

                value ? themprovider.setDarkMode() : themprovider.setLightMode();
              },
              title: const Text('Darkmode'),
            ),
            const Divider(),
            RadioListTile<int>(
                value: 1,
                groupValue: Preferences.gender,
                title: const Text('Masculino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                }),
            const Divider(),
            RadioListTile<int>(
                value: 2,
                groupValue: Preferences.gender,
                title: const Text('Feminino'),
                onChanged: (value) {
                  Preferences.gender = value ?? 2;

                  setState(() {});
                }),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                initialValue: Preferences.name,
                decoration: const InputDecoration(
                    labelText: 'Nombre', helperText: 'Nombre del usuario'),
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
              ),
            )
          ],
        )),
      ),
      drawer: const SideMenu(),
    );
  }
}
