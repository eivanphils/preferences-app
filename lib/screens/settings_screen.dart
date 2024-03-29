import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:preferences_app/providers/theme_provider.dart';
import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class Settings extends StatefulWidget {
  static const routeName = 'settings';

  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsScreen'),
      ),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Settings',
              style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
            ),
            const Divider(),
            SwitchListTile(
                value: Preferences.isDarkMode,
                title: const Text('Darmode'),
                onChanged: (value) {
                  Preferences.isDarkMode = value;
                  final themeProvider =
                      Provider.of<ThemeProvider>(context, listen: false);

                  value
                      ? themeProvider.setDarkMode()
                      : themeProvider.setLightMode();
                  setState(() {});
                }),
            const Divider(),
            RadioListTile<int>(
                value: 1,
                groupValue: Preferences.gender,
                title: const Text('Male'),
                onChanged: (value) {
                  Preferences.gender = value ?? 1;
                  setState(() {});
                }),
            const Divider(),
            RadioListTile<int>(
                value: 2,
                groupValue: Preferences.gender,
                title: const Text('Female'),
                onChanged: (value) {
                  Preferences.gender = value ?? 2;
                  setState(() {});
                }),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                onChanged: (value) {
                  Preferences.name = value;
                  setState(() {});
                },
                initialValue: Preferences.name,
                decoration: const InputDecoration(
                    label: Text('Name'), helperText: 'Username'),
              ),
            )
          ],
        )),
      ),
    );
  }
}
