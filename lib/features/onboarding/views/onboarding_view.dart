import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/asset_value_manager.dart';

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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.images.onboarding),
              fit: BoxFit.cover,
            ),
          ),
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const Gap(80),
              Text(
                'Welcome to\nNFT Marketplace',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: Assets.fonts.sfProDisplay,
                  fontWeight: FontWeight.w900,
                ),
              ),
              const Spacer(),
              Padding(
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
                        color: Colors.white.withAlpha(27),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withAlpha(77),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(27),
                        child: Column(
                          children: [
                            const Text(
                              'Explore and Mint NFTs',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const Gap(6),
                            Text(
                              'You can buy and sell the NFTs of the best artists in the world.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white.withAlpha(153),
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            const Gap(27),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 27,
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white.withAlpha(77),
                                      ),
                                      borderRadius: BorderRadius.circular(40),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color(0xff7a649c),
                                          Color(0xff48499c),
                                        ],
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                      ),
                                    ),
                                    child: MaterialButton(
                                      minWidth: double.infinity,
                                      onPressed: () {},
                                      child: const Text(
                                        'Get started now',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const Gap(80),
            ],
          ),
        ),
      ),
    );
  }
}
