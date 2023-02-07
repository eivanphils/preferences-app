import 'package:flutter/material.dart';

import 'package:preferences_app/shared_preferences/preferences.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = 'home';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
      ),
      drawer: const SideMenu(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('isDarkMode: ${Preferences.isDarkMode}'),
          const Divider(),
          Text('Gender: ${Preferences.gender == 1 ? 'Male' : 'Female'}'),
          const Divider(),
          Text('Username: ${Preferences.name}'),
          const Divider()
        ]
      ),
    );
  }
}
