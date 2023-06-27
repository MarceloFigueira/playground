import 'package:flutter/material.dart';
import 'package:playground/src/pages/bolinha.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Bolinha(),
    );
  }
}
