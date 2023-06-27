import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tabela de Números',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NumberTable(),
    );
  }
}

class NumberTable extends StatefulWidget {
  const NumberTable({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NumberTableState createState() => _NumberTableState();
}

class _NumberTableState extends State<NumberTable> {
  List<int> numbers = List.generate(50, (index) => index + 1);
  late int highlightedNumber;

  void sortNumber() {
    setState(() {
      highlightedNumber = Random().nextInt(50) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tabela de Números'),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Table(
              border: TableBorder.all(),
              children: [
                for (int i = 0; i < 10; i++)
                  TableRow(
                    children: [
                      for (int j = 0; j < 5; j++)
                        TableCell(
                          child: Container(
                            height: 40,
                            color: numbers[i * 5 + j] == highlightedNumber
                                ? Colors.yellow
                                : null,
                            child: Center(
                              child: Text(numbers[i * 5 + j].toString()),
                            ),
                          ),
                        ),
                    ],
                  ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: sortNumber,
              child: const Text('SORTEAR NÚMERO'),
            ),
          ],
        ),
      ),
    );
  }
}
