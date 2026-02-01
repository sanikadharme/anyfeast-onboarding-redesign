import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';
import '../widgets/progress_indicator.dart';

class HealthInfoScreen extends StatelessWidget {
  final VoidCallback onNext;

  const HealthInfoScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),

          const StepProgress(step: 1, total: 4),
          const SizedBox(height: 12),
          Text(
            "Basic health info",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 16),
          const TextField(decoration: InputDecoration(labelText: "Gender")),
          const TextField(decoration: InputDecoration(labelText: "Age")),
          const TextField(decoration: InputDecoration(labelText: "Height")),
          const TextField(decoration: InputDecoration(labelText: "Weight")),
          const Spacer(),
          PrimaryButton(text: "Next", onPressed: onNext),
        ],
      ),
    );
  }
}
