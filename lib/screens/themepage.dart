import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_toturials/provider/themeprovider.dart';

class ThemePage extends StatelessWidget {
  const ThemePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          RadioListTile<ThemeMode>(
              value: ThemeMode.light,
              title: Text('Light'),
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('Dark'),
              value: ThemeMode.dark,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme),
          RadioListTile<ThemeMode>(
              title: Text('System'),
              value: ThemeMode.system,
              groupValue: provider.themeMode,
              onChanged: provider.setTheme)
        ],
      ),
    );
  }
}
