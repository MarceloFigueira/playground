import 'package:flutter/material.dart';

class Bolinha extends StatelessWidget {
  const Bolinha({super.key});

  @override
  Widget build(BuildContext context) {
    // Desabilita o botão Voltar do navegador

    return Scaffold(
      appBar: AppBar(
        title: const Text("Bolinha"),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          width: 150,
          height: 150,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.blue,
          ),
          child: Container(
            width: 25,
            height: 2,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
