import 'package:darkmode_switch/theme_provider.dart';
import 'package:darkmode_switch/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Dark Theme"),
        centerTitle: true,
      ),
      body: Center(
        child: SwitchListTile(
          title: const Text("Switch Theme"),
          value: themeProvider.themeMode == ThemeMode.dark,
          onChanged: (index) {
            themeProvider.toggleTheme();
          },
        ),
      ),
    );
  }
}

