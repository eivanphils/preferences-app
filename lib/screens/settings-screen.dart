import 'package:flutter/material.dart';

import 'package:preferences_app/widgets/side_menu.dart';

class Settings extends StatelessWidget {
  static const routeName = 'settings';

  const Settings({ Key? key }) : super(key: key);

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
              const Text('Settings', style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),),
              const Divider(),

              SwitchListTile(
                value: true,
                title: const Text('Darmode'),
                onChanged: (value) {

              }),
              const Divider(),

              RadioListTile<int>(
                value: 1,
                groupValue: 1,
                title: const Text('Male'),
                onChanged: (value) {}),

              const Divider(),
              RadioListTile<int>(
                value: 2,
                groupValue: 1,
                title: const Text('Female'),
                onChanged: (value) {}),

              const Divider(),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Phils',
                  decoration: const InputDecoration(
                    label: Text('Name'),
                    helperText: 'Username'
                  ),
                ),
              )
            ],
          ) 
        ),
      ),
    );  }
}