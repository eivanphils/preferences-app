import 'package:flutter/material.dart';

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
      body: const Center(child: Text('HomeScreen')),
    );
  }
}
