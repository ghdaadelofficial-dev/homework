import 'package:flutter/material.dart';
import 'gender_section.dart';     
import 'height.dart';  
import 'final_part.dart';         
void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  bool isMale = true;    
  int height = 180;     
  int weight = 60;      
  int age = 20;        
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: GenderWidget(
              isMale: isMale,
              onSelect: (selectedGender) {
                setState(() {
                  isMale = selectedGender;
                });
              },
            ),
          ),
          
          Expanded(
            child: HeightWidget(
              height: height,
              onChanged: (double newValue) {
                setState(() {
                  height = newValue.round();
                });
              },
            ),
          ),
          
          // 3. الجزء الأخير (بياخد الوزن والسن والطول عشان يحسب + وظائف الأزرار)
          Expanded(
            child: LastSection(
              weight: weight,
              age: age,
              height: height, // بعتنا الطول هنا عشان الزرار محتاجه في الحساب
              onWeightAdd: () => setState(() => weight++),
              onWeightRemove: () => setState(() => weight--),
              onAgeAdd: () => setState(() => age++),
              onAgeRemove: () => setState(() => age--),
            ),
          ),
        ],
      ),
    );
  }
}

