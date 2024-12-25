import 'package:flutter/material.dart';

import 'core/services/services_mixin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget with ServicesMixin {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurpleAccent,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      scaffoldMessengerKey: msg.rootScaffoldMessengerKey,
      home: Overlay(
        initialEntries: [
          OverlayEntry(
            builder: (context) => const MyHomePage(),
          ),
        ],
      ),
    );
  }
}

class MyHomePage extends StatelessWidget with ServicesMixin {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('VOCAPP')),
    );
  }
}
