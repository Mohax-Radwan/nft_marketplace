import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/home/views/home_view.dart';
import 'package:nft_marketplace/features/onboarding/widgets/onboarding_button.dart';

class OnboardingCard extends StatelessWidget {
  const OnboardingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: MyColors.white.withAlpha(27),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: MyColors.white.withAlpha(77),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(27),
              child: Column(
                children: [
                  const Text(
                    'Explore and Mint NFTs',
                    textAlign: TextAlign.center,
                    style: TextStyles.s20w600,
                  ),
                  const Gap(6),
                  Text(
                    'You can buy and sell the NFTs of the best artists in the world.',
                    textAlign: TextAlign.center,
                    style: TextStyles.s12w400.copyWith(
                      color: MyColors.white.withAlpha(153),
                    ),
                  ),
                  const Gap(27),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 27,
                      ),
                      child: OnboardingButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                            context,
                            HomeView.route
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
