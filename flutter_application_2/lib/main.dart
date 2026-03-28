import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[200],

        body: Padding(
          padding: EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


      const  SizedBox( height: 30,)  ,
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hello! 👋",
                        style: TextStyle(color: Colors.white, fontSize: 18)),

                    SizedBox(height: 6),

                    Text("Try your best to build this ui",
                        style: TextStyle(color: Colors.white70)),

                    SizedBox(height: 10),

                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.purpleAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Get Started",
                            style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),

              // Quick Stats
              Text("Quick Stats",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),

              SizedBox(height: 8),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Container(
                    width: 90,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.people, color: Colors.deepPurple),
                        Text("1,234"),
                        Text("Users", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),

                  Container(
                    width: 90,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.star, color: Colors.orange),
                        Text("4.8"),
                        Text("Rating", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),

                  Container(
                    width: 90,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        Icon(Icons.show_chart, color: Colors.blue),
                        Text("98%"),
                        Text("Success", style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  ),

                ],
              ),

              SizedBox(height: 15),
              // Features
              Text("Features",
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold)),

              SizedBox(height: 8),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.speed, color: Colors.deepPurple),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Fast Performance",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Lightning fast app performance",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14),
                  ],
                ),
              ),

              SizedBox(height: 8),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.security, color: Colors.blue),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Secure",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Your data is safe with us",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14),
                  ],
                ),
              ),

              SizedBox(height: 8),

              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Icon(Icons.palette, color: Colors.orange),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Beautiful UI",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Modern and clean design",
                              style: TextStyle(color: Colors.grey)),
                        ],
                      ),
                    ),
                    Icon(Icons.arrow_forward_ios, size: 14),
                  ],
                ),
              ),

              Spacer(),

              // الأزرار تحت
              Row(
                children: [

                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Settings",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),

                  SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text("Profile",
                            style: TextStyle(color: Colors.white)),
                      ),
                    ),
                  ),

                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
