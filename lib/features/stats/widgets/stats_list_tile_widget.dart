import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/stats/models/stats_list_tile_model.dart';

class StatsListTile extends StatelessWidget {
  const StatsListTile({
    super.key,
    required this.model,
  });
  final StatsListTileModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          model.number.toString(),
          style: TextStyles.s13w400.copyWith(color: MyColors.grey),
        ),
        const Gap(9),
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(9),
          child: Image.asset(
            model.image,
            width: 40,
            height: 40,
            fit: BoxFit.cover,
          ),
        ),
        const Gap(14),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model.title,
              style: TextStyles.s16w600,
            ),
            Text(
              'view info',
              style: TextStyles.s12w400.copyWith(color: MyColors.grey),
            ),
          ],
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                const FaIcon(
                  FontAwesomeIcons.ethereum,
                  color: MyColors.grey,
                  size: 12,
                ),
                const Gap(6),
                Text(
                  model.price.toString(),
                  style: TextStyles.s14w400,
                ),
              ],
            ),
            Text(
              '${model.percentage}%',
              style: model.percentage >= 0
                  ? TextStyles.s12w400.copyWith(color: MyColors.green)
                  : TextStyles.s12w400.copyWith(color: MyColors.red),
            ),
          ],
        ),
      ],
    );
  }
}
