import 'package:flutter/material.dart';
import 'controllers/emission_controller.dart';
import 'views/home_page.dart';

void main() {
  runApp(const MonApplication());
}

class MonApplication extends StatelessWidget {
  const MonApplication({super.key});

  @override
  Widget build(BuildContext context) {
    final emissionController = EmissionController();

    return MaterialApp(
      title: 'Émissions Streaming',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        useMaterial3: false,
      ),
      home: HomePage(controller: emissionController),
    );
  }
}