import 'package:flutter/material.dart';

class HeightWidget extends StatelessWidget {
  final int height;
  final Function(double) onChanged;

  HeightWidget({required this.height, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('HEIGHT', style: TextStyle(color: Color(0xFF8D8E98))),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text('$height', style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900, color: Colors.white)),
              Text('cm', style: TextStyle(color: Color(0xFF8D8E98))),
            ],
          ),
          Slider(
            value: height.toDouble(),
            min: 120, max: 220,
            activeColor: Color(0xFFEB1555),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}