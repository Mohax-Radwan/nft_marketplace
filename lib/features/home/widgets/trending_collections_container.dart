import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/home/constants/constants.dart';

class TrendingCollectionsContainer extends StatelessWidget {
  const TrendingCollectionsContainer({
    super.key,
    required this.image,
    required this.title,
  });

  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      width: Constants.trendingContainerWidth,
      height: Constants.trendingContainerHeight,
      decoration: BoxDecoration(
        color: MyColors.white.withValues(alpha: 0.1),
        border: Border.all(
          color: MyColors.white.withValues(alpha: 0.2),
        ),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(20),
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Gap(9),
          Row(
            children: [
              Text(
                title,
                style: TextStyles.s12w600,
              ),
              const Spacer(),
              const Icon(
                CupertinoIcons.heart_fill,
                color: Colors.red,
              ),
              Text(
                ' 200',
                style: TextStyles.s12w400.copyWith(color: MyColors.greyText),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
