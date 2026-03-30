import 'package:flutter/material.dart';
import 'dart:math';
import 'result.dart'; // تأكدي من عمل Import لصفحة النتيجة

class LastSection extends StatelessWidget {
  final int weight;
  final int age;
  final int height; // بنحتاجه عشان الحساب
  final VoidCallback onWeightAdd;
  final VoidCallback onWeightRemove;
  final VoidCallback onAgeAdd;
  final VoidCallback onAgeRemove;

  LastSection({
    required this.weight,
    required this.age,
    required this.height,
    required this.onWeightAdd,
    required this.onWeightRemove,
    required this.onAgeAdd,
    required this.onAgeRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // سطر الوزن والسن
        Row(
          children: [
            Expanded(child: buildCounterCard('WEIGHT', weight, onWeightAdd, onWeightRemove)),
            Expanded(child: buildCounterCard('AGE', age, onAgeAdd, onAgeRemove)),
          ],
        ),
        // زرار الـ CALCULATE والنفيجيشن
        GestureDetector(
          onTap: () {
            // 1. حساب الـ BMI
            double bmi = weight / pow(height / 100, 2);
            
            // 2. الانتقال لصفحة النتائج
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ResultPage(bmiResult: bmi.toStringAsFixed(1)),
              ),
            );
          },
          child: Container(
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
            child: Center(
              child: Text('CALCULATE', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
            ),
          ),
        ),
      ],
    );
  }

  // ويدجت صغيرة للكارت المتكرر (الوزن والسن) عشان منكررش الكود
  Widget buildCounterCard(String label, int value, VoidCallback add, VoidCallback remove) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(color: Color(0xFF1D1E33), borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(label, style: TextStyle(color: Color(0xFF8D8E98))),
          Text('$value', style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(heroTag: label + "1", onPressed: remove, mini: true, backgroundColor: Color(0xFF4C4F5E), child: Icon(Icons.remove)),
              SizedBox(width: 10),
              FloatingActionButton(heroTag: label + "2", onPressed: add, mini: true, backgroundColor: Color(0xFF4C4F5E), child: Icon(Icons.add)),
            ],
          )
        ],
      ),
    );
  }
}