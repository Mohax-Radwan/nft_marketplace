import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/stats/models/stats_list_tile_model.dart';
import 'package:nft_marketplace/features/stats/widgets/ranking_activity_widget.dart';
import 'package:nft_marketplace/features/stats/widgets/stats_list_tile_widget.dart';
import 'package:nft_marketplace/features/stats/widgets/stats_popup_button.dart';

class StatsViewBody extends StatelessWidget {
  const StatsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    const List<StatsListTileModel> models = [
      StatsListTileModel(
        number: 1,
        image: Images.statsListTile1,
        title: 'Azumi',
        price: 200055.02,
        percentage: 3.99,
      ),
      StatsListTileModel(
        number: 2,
        image: Images.statsListTile2,
        title: 'Hape Prime',
        price: 180055.45,
        percentage: 33.79,
      ),
      StatsListTileModel(
        number: 3,
        image: Images.statsListTile3,
        title: 'Cryoto',
        price: 90055.62,
        percentage: -6.56,
      ),
      StatsListTileModel(
        number: 4,
        image: Images.statsListTile4,
        title: 'Ape Club',
        price: 88055.12,
        percentage: 3.99,
      ),
      StatsListTileModel(
        number: 5,
        image: Images.statsListTile5,
        title: 'Bat',
        price: 10055.06,
        percentage: 3.99,
      ),
      StatsListTileModel(
        number: 6,
        image: Images.statsListTile6,
        title: 'Mutant',
        price: 9095.27,
        percentage: 3.99,
      ),
      StatsListTileModel(
        number: 7,
        image: Images.statsListTile7,
        title: 'Metaverse',
        price: 10055.02,
        percentage: 3.99,
      ),
      StatsListTileModel(
        number: 8,
        image: Images.statsListTile8,
        title: 'Mountain',
        price: 8055.73,
        percentage: 3.99,
      ),
      StatsListTileModel(
        number: 9,
        image: Images.statsListTile9,
        title: 'Mutant Ape',
        price: 5055.73,
        percentage: 3.99,
      ),
      StatsListTileModel(
        number: 10,
        image: Images.statsListTile10,
        title: 'The Sandbox',
        price: 1055.02,
        percentage: -1.99,
      ),
    ];
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: Gap(50),
        ),
        const SliverToBoxAdapter(
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
        const SliverToBoxAdapter(
          child: Gap(44),
        ),
        const SliverToBoxAdapter(child: RankingActivityWidget()),
        const SliverToBoxAdapter(
          child: Gap(27),
        ),
        const SliverToBoxAdapter(
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
        const SliverToBoxAdapter(child: Gap(27)),
        SliverToBoxAdapter(
          child: ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(18),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 54,
                sigmaY: 54,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 14),
                padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 27),
                width: 300,
                decoration: BoxDecoration(
                  color: MyColors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: MyColors.white.withValues(alpha: 0.15),
                    width: 1.5,
                  ),
                ),
                child: ListView.separated(
                  padding: EdgeInsets.zero,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => StatsListTile(model: models[index]),
                  separatorBuilder: (context, index) => const Gap(27),
                  itemCount: models.length,
                ),
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Gap(130),
        ),
      ],
    );
  }
}
