import 'package:flutter/material.dart';
import 'package:playground/src/pages/bolinha.dart';

import 'package:playground/src/pages/dashboard.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/bolinha': (context) => const Bolinha(),
      },
    );
  }
}
