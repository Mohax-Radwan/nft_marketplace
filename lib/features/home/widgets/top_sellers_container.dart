import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/home/constants/constants.dart';

class TopSellersContainer extends StatelessWidget {
  const TopSellersContainer({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
    required this.number,
  });

  final String image;
  final String title;
  final String subTitle;
  final double number;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(9),
      width: Constants.topSellersWidth,
      height: Constants.topSellersHeight,
      decoration: BoxDecoration(
        color: MyColors.white.withValues(alpha: 0.1),
        border: Border.all(
          color: MyColors.white.withValues(alpha: 0.2),
        ),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          const Gap(10),
          Text(
            title,
            style: TextStyles.s13w600,
          ),
          Text(
            subTitle,
            style: TextStyles.s12w400.copyWith(color: MyColors.grey),
          ),
          const Gap(10),
          Row(
            children: [
              const FaIcon(
                FontAwesomeIcons.ethereum,
                color: MyColors.grey,
                size: 12,
              ),
              const Gap(6),
              Text(
                number.toString(),
                style: TextStyles.s13w400,
              ),
              const Spacer(),
              const Icon(
                CupertinoIcons.heart,
                color: MyColors.grey,
              ),
              Text(
                ' 200',
                style: TextStyles.s12w400.copyWith(color: MyColors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
