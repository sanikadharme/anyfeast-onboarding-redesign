import 'package:flutter/material.dart';
import 'package:onboarding_ux_design/onboarding/widgets/progress_indicator.dart';
import '../widgets/primary_button.dart';
import '../widgets/skip_button.dart';

class LifestyleBudgetScreen extends StatelessWidget {
  final VoidCallback onNext;

  const LifestyleBudgetScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 35),
          const StepProgress(step: 4, total: 4),
          const SizedBox(height: 12),
          Text(
            "Lifestyle & budget",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 12),
          const TextField(
            decoration: InputDecoration(labelText: "Cooking level"),
          ),
          const TextField(
            decoration: InputDecoration(labelText: "Weekly budget"),
          ),
          const Spacer(),

          PrimaryButton(text: "Continue", onPressed: onNext),

          Center(child: SkipButton(onSkip: onNext)),
        ],
      ),
    );
  }
}
