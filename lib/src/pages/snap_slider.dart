import 'package:flutter/material.dart';

class SliderSnap extends StatefulWidget {
  const SliderSnap({super.key});

  @override
  State<SliderSnap> createState() => _SliderSnapState();
}

class _SliderSnapState extends State<SliderSnap> {
  double _currentValue = 16.0;
  final double _min = 14.0;
  final double _max = 24.0;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            _currentValue.toString(),
            style: TextStyle(fontSize: _currentValue),
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  if (_currentValue > _min) {
                    setState(() {
                      _currentValue = _currentValue - 2.0;
                    });
                  }
                },
                child: const Text("A-"),
              ),
              Slider(
                min: _min,
                max: _max,
                divisions: 5,
                value: _currentValue,
                activeColor: Colors.brown,
                thumbColor: Colors.brown,
                inactiveColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _currentValue = value;
                  });
                },
              ),
              TextButton(
                onPressed: () {
                  setState(() {
                    _currentValue = _currentValue + 2.0;
                  });
                },
                child: const Text("A+"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
