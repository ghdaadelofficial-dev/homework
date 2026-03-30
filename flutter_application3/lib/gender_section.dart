import 'package:flutter/material.dart';

class GenderWidget extends StatelessWidget {
  final bool isMale;
  final Function(bool) onSelect;

  GenderWidget({required this.isMale, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => onSelect(true),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: isMale ? Color(0xFF1D1E33) : Color(0xFF111328),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.male, size: 80, color: Colors.white),
                  Text('MALE', style: TextStyle(color: Color(0xFF8D8E98))),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () => onSelect(false),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: !isMale ? Color(0xFF1D1E33) : Color(0xFF111328),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.female, size: 80, color: Colors.white),
                  Text('FEMALE', style: TextStyle(color: Color(0xFF8D8E98))),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}