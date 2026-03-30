

// --- 3. Features Section ---
import 'package:flutter/material.dart';
class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text("Features", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 8),
        FeatureTile(
          icon: Icons.speed,
          title: "Fast Performance",
          subtitle: "Lightning fast app performance",
          iconColor: Colors.deepPurple,
        ),
        SizedBox(height: 8),
        FeatureTile(
          icon: Icons.security,
          title: "Secure",
          subtitle: "Your data is safe with us",
          iconColor: Colors.blue,
        ),
        SizedBox(height: 8),
        FeatureTile(
          icon: Icons.palette,
          title: "Beautiful UI",
          subtitle: "Modern and clean design",
          iconColor: Colors.orange,
        ),
      ],
    );
  }
}

class FeatureTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;

  const FeatureTile({super.key, required this.icon, required this.title, required this.subtitle, required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          Icon(icon, color: iconColor),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 14),
        ],
      ),
    );
  }
}