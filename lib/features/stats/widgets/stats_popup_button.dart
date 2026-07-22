import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';

class StatsPopupButton extends StatelessWidget {
  const StatsPopupButton({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 54,
          sigmaY: 54,
        ),
        child: Container(
          width: 150,
          height: 40,
          decoration: BoxDecoration(
            color: MyColors.white.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(27),
            border: Border.all(
              color: MyColors.white.withValues(alpha: 0.15),
            ),
          ),
          child: PopupMenuButton<String>(
            onSelected: (context) {},
            padding: EdgeInsets.zero,
            // Drops the menu directly under the button
            offset: const Offset(0, 45),
            itemBuilder: (context) => [
              PopupMenuItem<String>(
                value: text,
                child: Text(text),
              ),
            ],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    icon,
                    size: 16,
                    color: MyColors.white,
                  ),
                  Text(
                    text,
                    style: const TextStyle(
                      color: MyColors.white,
                      fontSize: 12,
                    ),
                  ),
                  const Icon(
                    Icons.keyboard_arrow_down_rounded,
                    size: 16,
                    color: MyColors.white,
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
