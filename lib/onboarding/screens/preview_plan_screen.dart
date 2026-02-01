import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';

class PreviewPlanScreen extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const PreviewPlanScreen({
    super.key,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          Text(
            "Your weekly meal plan",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 12),
          const Text("Balanced meals • Budget friendly • Zero waste focus"),
          const Spacer(),

          PrimaryButton(
            text: "Customize my plan",
            onPressed: onNext, // full onboarding
          ),

          TextButton(
            onPressed: onSkip, // 👈 skip ALL details
            child: const Text("Skip for now"),
          ),
        ],
      ),
    );
  }
}
