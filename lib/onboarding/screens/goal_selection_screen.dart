import 'package:flutter/material.dart';
import '../widgets/option_card.dart';
import '../widgets/primary_button.dart';

class GoalSelectionScreen extends StatefulWidget {
  final VoidCallback onNext;

  const GoalSelectionScreen({super.key, required this.onNext});

  @override
  State<GoalSelectionScreen> createState() => _GoalSelectionScreenState();
}

class _GoalSelectionScreenState extends State<GoalSelectionScreen> {
  String selected = "";

  final goals = [
    "Eat healthier",
    "Save time",
    "Reduce food waste",
    "Lose / Maintain weight",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          Text("What’s your main goal?",
              style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          ...goals.map(
            (g) => Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: OptionCard(
                text: g,
                selected: selected == g,
                onTap: () => setState(() => selected = g),
              ),
            ),
          ),
          const Spacer(),
          PrimaryButton(text: "Continue", onPressed: widget.onNext),
        ],
      ),
    );
  }
}
