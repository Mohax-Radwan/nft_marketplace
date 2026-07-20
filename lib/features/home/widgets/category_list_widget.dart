import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/features/home/constants/constants.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';
import 'package:nft_marketplace/features/home/widgets/category_container2.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({
    super.key,
    required this.categories,
  });

  final List<CategoryModel> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
