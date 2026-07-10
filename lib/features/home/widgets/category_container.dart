import 'dart:ui';

import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';

class CategoryContainer extends StatelessWidget {
  const CategoryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 165,
      decoration: BoxDecoration(
        //color: Colors.red,
        image: const DecorationImage(
          image: AssetImage(Images.homeCategory2),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              bottom: Radius.circular(27),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: const Column(
                children: [
                  SizedBox(width: double.infinity),
                  Text(
                    'Art',
                    style: TextStyles.s26w600,
                  ),
                  Gap(10),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
