import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  ResultPage({required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('YOUR RESULT')),
      body: Center(
        child: Text('BMI: $bmi', style: TextStyle(fontSize: 40, color: Colors.white)),
      ),
    );
  }
}