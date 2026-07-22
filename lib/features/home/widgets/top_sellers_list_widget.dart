import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/features/home/constants/constants.dart';
import 'package:nft_marketplace/features/home/models/top_sellers_model.dart';
import 'package:nft_marketplace/features/home/widgets/top_sellers_container.dart';

class TopSellersListWidget extends StatelessWidget {
  const TopSellersListWidget({
    super.key,
    required this.list,
  });

  final List<TopSellersModel> list;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constants.topSellersHeight,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) => TopSellersContainer(
          image: list[index].image,
          title: list[index].title,
          subTitle: list[index].subTitle,
          number: list[index].number,
        ),
        separatorBuilder: (BuildContext context, int index) => const Gap(9),
        itemCount: list.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
