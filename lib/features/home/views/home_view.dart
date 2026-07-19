import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/home/constants/constants.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';
import 'package:nft_marketplace/features/home/widgets/category_container2.dart';

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
          children: [
            const SizedBox(width: double.infinity),
            const Gap(20),
            SizedBox(
              height: Constants.categoryContainerHeight,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                controller: ScrollController(
                  // Height * Index (the ratio for the separator)  ⇓⇓⇓⇓⇓⇓⇓⇓⇓
                  initialScrollOffset: Constants.categoryContainerHeight * 1.25,
                ),
                itemCount: categories.length,
                itemBuilder: (BuildContext context, int index) =>
                    CategoryContainer2(image: categories[index].image, title: categories[index].title),
                separatorBuilder: (BuildContext context, int index) => const Gap(9),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
