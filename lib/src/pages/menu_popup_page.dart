import 'package:flutter/material.dart';
import 'package:playground/src/widgets/menu_popup.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [MenuPopup()],
      ),
      body: Center(
        child: Container(),
      ),
    );
  }
}
