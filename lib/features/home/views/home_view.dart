import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/home/constants/constants.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';
import 'package:nft_marketplace/features/home/widgets/category_list_widget.dart';
import 'package:nft_marketplace/features/home/widgets/trending_collections_container.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String route = 'home view';
  static const List<CategoryModel> categories = [
    CategoryModel(title: 'Music', image: Images.homeCategory1),
    CategoryModel(title: 'Art', image: Images.homeCategory2),
    CategoryModel(title: 'Nature', image: Images.homeCategory3),
  ];

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: MyColors.primary,
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'NFT Marketplace',
            style: TextStyles.s26w600,
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(width: double.infinity),
            const Gap(20),
            const CategoryListWidget(categories: categories),
            const Gap(27),
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text(
                'Trending Collections',
                style: TextStyles.s18w600,
              ),
            ),
            const Gap(10),
            TrendingCollectionsContainer(
              image: Images.homeTrending1,
              title: '3D Art',
            ),
          ],
        ),
      ),
    );
  }
}
