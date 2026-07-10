import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';

class OnboardingButton extends StatelessWidget {
  const OnboardingButton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: MyColors.white.withAlpha(77),
          ),
          borderRadius: BorderRadius.circular(40),
          gradient: const LinearGradient(
            colors: [
              MyColors.onboardingButtonGradiantColorLeft,
              MyColors.onboardingButtonGradiantColorRight,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: MaterialButton(
          minWidth: double.infinity,
          onPressed: onPressed,
          child: const Text(
            'Get started now',
            style: TextStyles.s14w600,
          ),
        ),
      ),
    );
  }
}
