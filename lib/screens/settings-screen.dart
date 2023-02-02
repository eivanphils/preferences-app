import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  static const routeName = 'settings';

  const Settings({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SettingsScreen'),
      ),
      body: const Center(child: Text('SettingsScreen')),
    );  }
}