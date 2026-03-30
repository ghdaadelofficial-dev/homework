import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  // السطر ده هو اللي فيه "bmiResult" اللي الـ Navigator بيدور عليه
  final String bmiResult; 

  // وده الـ Constructor اللي بيستقبلها
  ResultPage({required this.bmiResult});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI RESULT')),
      body: Center(
        child: Text(
          bmiResult, // هنا بنعرض الرقم اللي جالنا
          style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}