import 'package:flutter/material.dart';
import 'header.dart';
import 'quick_state.dart';
import 'feature.dart';
import 'button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
  
      home: Scaffold(
        backgroundColor:  Color.fromARGB(255, 200, 156, 156),
        body: Padding(
          padding:  EdgeInsets.all(16),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(height: 30),
              
               HeaderCard(),
              SizedBox(height: 15),
              
             
              QuickStatsSection(),
               SizedBox(height: 15),
              
            
             FeaturesSection(),
              
             Spacer(),
              
            
             BottomButtonsRow(),
            ],
          ),
        ),
      ),
    );
  }
}


