import 'package:flutter/material.dart';

class StepProgress extends StatelessWidget {
  final int step;
  final int total;

  const StepProgress({super.key, required this.step, required this.total});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Step $step of $total",
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}
