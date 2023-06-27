// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MenuDropdown extends StatefulWidget {
  final String title;
  final List<Widget> items;
  const MenuDropdown({
    Key? key,
    required this.title,
    required this.items,
  }) : super(key: key);

  @override
  State<MenuDropdown> createState() => _MenuDropdownState();
}

class _MenuDropdownState extends State<MenuDropdown> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            color: Colors.grey[200],
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    widget.title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  size: 24,
                ),
              ],
            ),
          ),
        ),
        if (_isExpanded)
          Column(
            children: widget.items,
          ),
      ],
    );
  }
}
