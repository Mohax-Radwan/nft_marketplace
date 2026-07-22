import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/stats/widgets/ranking_activity_widget.dart';
import 'package:nft_marketplace/features/stats/widgets/stats_popup_button.dart';

class StatsViewBody extends StatelessWidget {
  const StatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Gap(50),
        ),
        SliverToBoxAdapter(
          child: Stack(
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
        ),
        SliverToBoxAdapter(
          child: Gap(44),
        ),
        SliverToBoxAdapter(child: RankingActivityWidget()),
        SliverToBoxAdapter(
          child: Gap(27),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                StatsPopupButton(
                  text: 'All categories',
                  icon: CupertinoIcons.rectangle_grid_2x2,
                ),
                Spacer(),
                StatsPopupButton(
                  text: 'All Chains',
                  icon: CupertinoIcons.link,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
