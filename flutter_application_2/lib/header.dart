// --- 1. Header Card Widget ---
import 'package:flutter/material.dart';
class HeaderCard extends StatelessWidget {
  const HeaderCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Hello! 👋",
              style: TextStyle(color: Colors.white, fontSize: 18)),
          const SizedBox(height: 6),
          const Text("Try your best to build this ui",
              style: TextStyle(color: Colors.white70)),
          const SizedBox(height: 10),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Center(
              child: Text("Get Started", style: TextStyle(color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}