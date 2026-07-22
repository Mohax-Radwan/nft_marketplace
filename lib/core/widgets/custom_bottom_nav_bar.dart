import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    const borderRadius = BorderRadius.vertical(top: Radius.circular(45));

    return SizedBox(
      width: double.infinity,
      height: 122,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: ClipRRect(
              borderRadius: borderRadius,
              child: BackdropFilter(
                // 1. Background Blur (Sigma = 72.07)
                filter: ImageFilter.blur(sigmaX: 72.07, sigmaY: 72.07),
                child: Container(
                  width: double.infinity,
                  height: 88,
                  decoration: BoxDecoration(
                    borderRadius: borderRadius,
                    // 2. Base Fill Color (#000000 at 20% opacity)
                    color: const Color(0xFF000000).withValues(alpha: 0.2),

                    // 3. Drop Shadow (#292782 at 10% opacity)
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0x1A292782), // 10% alpha (0x1A)
                        offset: Offset(0, -4.5), // X: 0, Y: -4.5
                        blurRadius: 27.03, // Blur: 27.03
                        spreadRadius: 0, // Spread: 0
                      ),
                    ],

                    // 4. Inner Shadow Approximation (0.9px top stroke at 20% white overlay)
                    border: Border(
                      top: BorderSide(
                        color: Colors.white.withValues(alpha: 0.2),
                        width: 0.9,
                      ),
                    ),
                  ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.home,
                          color: MyColors.white,
                          size: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.chart_bar_fill,
                          color: MyColors.grey,
                          size: 26,
                        ),
                      ),
                      const Gap(50),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.search,
                          color: MyColors.grey,
                          size: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.person,
                          color: MyColors.grey,
                          size: 26,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 70,
              height: 70,
              decoration: const ShapeDecoration(
                color: MyColors.whitePink,
                shape: StarBorder.polygon(sides: 6, pointRounding: 0.3),
              ),
              child: const Center(
                child: FaIcon(
                  FontAwesomeIcons.plus,
                  color: MyColors.white,
                  size: 28,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
