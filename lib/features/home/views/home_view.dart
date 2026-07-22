import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';
import 'package:nft_marketplace/features/home/models/trending_collection_model.dart';
import 'package:nft_marketplace/features/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String route = 'home view';
  static const List<CategoryModel> categories = [
    CategoryModel(title: 'Music', image: Images.homeCategory1),
    CategoryModel(title: 'Art', image: Images.homeCategory2),
    CategoryModel(title: 'Nature', image: Images.homeCategory3),
  ];
  static const List<TrendingCollectionModel> trendingCollections = [
    TrendingCollectionModel(title: '3D Art', image: Images.homeTrending1),
    TrendingCollectionModel(title: 'Abstract Art', image: Images.homeTrending2),
    TrendingCollectionModel(title: 'Portrait Art', image: Images.homeTrending3),
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
        body: const HomeViewBody(categories: categories, trendingCollections: trendingCollections),
        bottomNavigationBar: SizedBox(
          width: double.infinity,
          height: 122,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 88,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(45)),
                    color: Colors.blue,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 70,
                  height: 70,
                  decoration: const ShapeDecoration(
                    color: Colors.red,
                    shape: StarBorder.polygon(sides: 6, pointRounding: 0.3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
