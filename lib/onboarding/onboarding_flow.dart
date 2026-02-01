import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart';
import 'screens/goal_selection_screen.dart';
import 'screens/preview_plan_screen.dart';
import 'screens/health_info_screen.dart';
import 'screens/fitness_goal_screen.dart';
import 'screens/food_preferences_screen.dart';
import 'screens/lifestyle_budget_screen.dart';
import 'screens/finish_screen.dart';

class OnboardingFlow extends StatefulWidget {
  const OnboardingFlow({super.key});

  @override
  State<OnboardingFlow> createState() => _OnboardingFlowState();
}

class _OnboardingFlowState extends State<OnboardingFlow> {
  final PageController _controller = PageController();

  void nextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void jumpToFinish() {
    _controller.jumpToPage(7); // index of FinishScreen
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          WelcomeScreen(onNext: nextPage),
          GoalSelectionScreen(onNext: nextPage),
          PreviewPlanScreen(
            onNext: nextPage,
            onSkip: jumpToFinish, // 👈 important
          ),
          HealthInfoScreen(onNext: nextPage),
          FitnessGoalScreen(onNext: nextPage),
          FoodPreferencesScreen(onNext: nextPage),
          LifestyleBudgetScreen(onNext: nextPage),
          const FinishScreen(),
        ],
      ),
    );
  }
}
