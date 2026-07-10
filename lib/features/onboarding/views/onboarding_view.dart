import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/onboarding/widgets/onboarding_card.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});
  static const route = 'onboarding view';

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Images.onboarding),
              fit: BoxFit.cover,
            ),
          ),
          child: const Column(
            children: [
              Gap(80),
              Text(
                'Welcome to\nNFT Marketplace',
                style: TextStyles.s30w900,
              ),
              Spacer(),
              OnboardingCard(),
              Gap(80),
            ],
          ),
        ),
      ),
    );
  }
}