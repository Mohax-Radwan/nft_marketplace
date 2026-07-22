import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';
import 'package:nft_marketplace/features/home/models/top_sellers_model.dart';
import 'package:nft_marketplace/features/home/models/trending_collection_model.dart';
import 'package:nft_marketplace/features/home/widgets/category_list_widget.dart';
import 'package:nft_marketplace/features/home/widgets/top_sellers_container.dart';
import 'package:nft_marketplace/features/home/widgets/top_sellers_list_widget.dart';
import 'package:nft_marketplace/features/home/widgets/trending_list_widget.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
    required this.categories,
    required this.trendingCollections,
    required this.topSellers,
  });

  final List<CategoryModel> categories;
  final List<TrendingCollectionModel> trendingCollections;
  final List<TopSellersModel> topSellers;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const SizedBox(width: double.infinity),
        const Gap(12),
        const Align(
          alignment: Alignment.center,
          child: Text(
            'NFT Marketplace',
            style: TextStyles.s26w600,
          ),
        ),
        const Gap(20),
        CategoryListWidget(categories: categories),
        const Gap(27),
        const Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(
            'Trending Collections',
            style: TextStyles.s18w600,
          ),
        ),
        const Gap(10),
        TrendingListWidget(list: trendingCollections),
        const Gap(27),
        const Padding(
          padding: EdgeInsets.only(left: 14),
          child: Text(
            'Top Seller',
            style: TextStyles.s18w600,
          ),
        ),
        const Gap(10),
        TopSellersListWidget(list: topSellers),
      ],
    );
  }
}
