import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/features/home/constants/constants.dart';
import 'package:nft_marketplace/features/home/models/trending_collection_model.dart';
import 'package:nft_marketplace/features/home/widgets/trending_collections_container.dart';

class TrendingListWidget extends StatelessWidget {
  const TrendingListWidget({
    super.key,
    required this.list,
  });

  final List<TrendingCollectionModel> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.trendingContainerHeight,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => TrendingCollectionsContainer(
          image: list[index].image,
          title: list[index].title,
        ),
        separatorBuilder: (BuildContext context, int index) => const Gap(9),
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}