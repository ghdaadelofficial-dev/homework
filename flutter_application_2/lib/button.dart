// --- 4. Bottom Buttons Row ---
import 'package:flutter/material.dart';
class BottomButtonsRow extends StatelessWidget {
  const BottomButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
      CustomBottomButton(label: "Settings", color: Colors.blue),
       SizedBox(width: 10),
         CustomBottomButton(label: "Profile", color: Colors.orange),
      ],
    );
  }
}

class CustomBottomButton extends StatelessWidget {
  final String label;
  final Color color;

  const CustomBottomButton({super.key, required this.label, required this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(label, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}