

// --- 2. Quick Stats Section ---
import 'package:flutter/material.dart';
class QuickStatsSection extends StatelessWidget {
  const QuickStatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
    Text("Quick Stats",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            StatItem(icon: Icons.people, value: "1,234", label: "Users", color: Colors.deepPurple),
            StatItem(icon: Icons.star, value: "4.8", label: "Rating", color: Colors.orange),
            StatItem(icon: Icons.show_chart, value: "98%", label: "Success", color: Colors.blue),
          ],
        ),
      ],
    );
  }
}

// ويدجت صغيرة عشان متكررش تصميم المربع بتاع الـ Stat
class StatItem extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const StatItem({super.key, required this.icon, required this.value, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Icon(icon, color: color),
          Text(value),
          Text(label, style: const TextStyle(color: Colors.grey, fontSize: 12)),
        ],
      ),
    );
  }
}