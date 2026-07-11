// I used AI here to make this widget to be as the design.
// for more info :
// https://docs.google.com/document/d/1HSiskt-r818nBE98_OZtsiz0eRRbljQGinsNm92pp1M/edit?usp=sharing
// https://docs.google.com/document/d/1FPkaK0rpoj1mXiTs4-tKTQeAWzyJR1Gp-DuWuYt28v4/edit?usp=sharing

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';

class CategoryContainer2 extends StatelessWidget {
  const CategoryContainer2({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 165,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(27),
        child: Stack(
          children: [
            // 1. Base Layer: The sharp original image background
            Positioned.fill(
              child: Image.asset(image, fit: BoxFit.cover),
            ),

            // 2. Clear Gradient Blur Layer: Resolves the pipeline break
            Positioned.fill(
              child: ImageFiltered(
                imageFilter: ImageFilter.blur(
                  sigmaX: 18.02,
                  sigmaY: 18.02,
                  tileMode: TileMode.clamp, // Prevents transparent edge bleeding
                ),
                child: ShaderMask(
                  shaderCallback: (rect) {
                    return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent, // Top remains perfectly sharp
                        Colors.black, // Bottom gets fully blurred
                      ],
                      stops: [0.3, 0.8], // Blur transition timeline zone
                    ).createShader(rect);
                  },
                  blendMode: BlendMode.dstIn, // Clips image content via alpha map channel
                  child: Image.asset(image, fit: BoxFit.cover),
                ),
              ),
            ),

            // 3. Dark Shadow Overlay Layer: Exact Figma properties for clear text contrast
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black.withAlpha(0), // 0% Alpha Top
                      Colors.black.withAlpha(51), // 20% Alpha Bottom shadow overlay
                    ],
                  ),
                ),
              ),
            ),

            // 4. Text Layer: Perfectly crisp on top of all layers
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 14.0),
                child: Text(
                  title,
                  style: TextStyles.s20w600,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
