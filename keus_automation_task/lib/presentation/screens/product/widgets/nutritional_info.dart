import 'package:flutter/material.dart';

class NutritionalInfo extends StatelessWidget {
  final String label;
  final String subtitle;

  const NutritionalInfo({
    super.key,
    required this.label,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 4),
        Text(
          subtitle,
          style: TextStyle(color: Colors.grey[600]),
        ),
      ],
    );
  }
}
