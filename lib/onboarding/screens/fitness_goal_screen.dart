import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import '../widgets/progress_indicator.dart';

class FitnessGoalScreen extends StatelessWidget {
  final VoidCallback onNext;

  const FitnessGoalScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          const StepProgress(step: 2, total: 4),
          const SizedBox(height: 12),
          Text("Fitness goals",
              style: Theme.of(context).textTheme.headlineSmall),
          const TextField(decoration: InputDecoration(labelText: "Goal")),
          const TextField(decoration: InputDecoration(labelText: "Target weight")),
          const TextField(decoration: InputDecoration(labelText: "Activity level")),
          const Spacer(),
          PrimaryButton(text: "Next", onPressed: onNext),
        ],
      ),
    );
  }
}
