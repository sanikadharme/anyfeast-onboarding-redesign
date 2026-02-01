import 'package:flutter/material.dart';
import '../widgets/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  final VoidCallback onNext;

  const WelcomeScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          Text(
            "Plan meals smarter.\nWaste less.",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          const Text(
            "AI-powered meal planning using local and leftover ingredients.",
          ),
          const Spacer(),
          PrimaryButton(text: "Get Started", onPressed: onNext),
        ],
      ),
    );
  }
}
