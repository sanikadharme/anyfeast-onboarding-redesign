import 'package:flutter/material.dart';

class FinishScreen extends StatelessWidget {
  const FinishScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, size: 80, color: Colors.green),
            const SizedBox(height: 16),
            Text("You’re all set!",
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            const Text("Your personalized meal plan is ready."),
          ],
        ),
      ),
    );
  }
}
