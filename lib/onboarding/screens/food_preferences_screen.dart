import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import '../widgets/progress_indicator.dart';

class FoodPreferencesScreen extends StatelessWidget {
  final VoidCallback onNext;

  const FoodPreferencesScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          const StepProgress(step: 3, total: 4),
          const SizedBox(height: 12),
          Text("Food preferences",
              style: Theme.of(context).textTheme.headlineSmall),
          const TextField(decoration: InputDecoration(labelText: "Diet type")),
          const TextField(decoration: InputDecoration(labelText: "Allergies")),
          const Spacer(),
          PrimaryButton(text: "Next", onPressed: onNext),
        ],
      ),
    );
  }
}
