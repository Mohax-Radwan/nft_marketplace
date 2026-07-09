import 'package:flutter/material.dart';
import 'package:nft_marketplace/features/home/views/home_view.dart';
import 'package:nft_marketplace/features/onboarding/views/onboarding_view.dart';
import 'package:nft_marketplace/features/stats/views/stats_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        OnboardingView.route : (context) => const OnboardingView(),
        HomeView.route : (context) => const HomeView(),
        StatsView.route : (context) => const StatsView(),
      },
      initialRoute: OnboardingView.route,
    );
  }
}