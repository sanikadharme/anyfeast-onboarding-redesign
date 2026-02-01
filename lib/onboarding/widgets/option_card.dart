import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback onTap;

  const OptionCard({
    super.key,
    required this.text,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: selected ? Colors.green : Colors.grey.shade300,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
