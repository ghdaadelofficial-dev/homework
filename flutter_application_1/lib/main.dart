import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyLayout(),
  ));
}

class MyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //blue part 
          Container(
            
            height: 150,
            color: Colors.blue[50],
            margin: EdgeInsets.all(10),
          ),
               Container(
                     
            height:30,
            color: Colors.grey[300],
            margin: EdgeInsets.all(10),
          ),


          // اgreen and orange
          Row(
            children: [
              //green 
              Container(
                margin: EdgeInsets.only(left: 10),
                child: Column(
                  children: [
                    MyBox(color: Colors.green[200], w: 180, h: 50),
                    MyBox(color: Colors.green[200], w: 180, h: 50),
                  ],
                ),
              ),
              //orange
              Row(
                children: [
                  MyBox(color: Colors.orange[200], w: 85, h: 110),
                  MyBox(color: Colors.orange[200], w: 85, h: 110),
                ],
              ),
            ],
          ),

          // violette
          Row(
            children: [
             
              MyBox(color: Colors.purple[100], w: 90, h: 80),
              Column(
                children: [
                  MyBox(color: Colors.purple[200], w: 90, h: 35),
                  MyBox(color: Colors.purple[200], w: 90, h: 35),
                ],
              ),
              MyBox(color: Colors.purple[100], w: 90, h: 80),
              MyBox(color: Colors.purple[50], w: 80, h: 80),
            ],
          ),

          //dark blue 
          Row(
            children: [
              MyBox(color: Colors.cyan[100], w: 180, h: 50),
              MyBox(color: Colors.cyan[300], w: 180, h: 50),
            ],
          ),

          // grey 
          MyBox(color: Colors.grey[300], w: 370, h: 40),
        ],
      ),
    );
  }
}

class MyBox extends StatelessWidget {
  final Color? color;
  final double w;
  final double h;

  MyBox({this.color, required this.w, required this.h});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: w,
      height: h,
      color: color,
    );
  }
}
