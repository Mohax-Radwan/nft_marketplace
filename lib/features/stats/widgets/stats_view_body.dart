import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/stats/widgets/ranking_activity_widget.dart';

class StatsViewBody extends StatelessWidget {
  const StatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Gap(25),
        const Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'Stats',
                style: TextStyles.s20w600,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  CupertinoIcons.ellipsis_circle,
                  color: MyColors.grey,
                ),
              ),
            ),
          ],
        ),
        const Gap(44),
        const RankingActivityWidget(),
      ],
    );
  }
}
