import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/widgets/custom_bottom_nav_bar.dart';
import 'package:nft_marketplace/features/home/models/category_model.dart';
import 'package:nft_marketplace/features/home/models/top_sellers_model.dart';
import 'package:nft_marketplace/features/home/models/trending_collection_model.dart';
import 'package:nft_marketplace/features/home/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const String route = 'home view';

  static const List<CategoryModel> categories = [
    CategoryModel(title: 'Music', image: Images.homeCategory1),
    CategoryModel(title: 'Art', image: Images.homeCategory2),
    CategoryModel(title: 'Virtual Worlds', image: Images.homeCategory3),
  ];

  static const List<TrendingCollectionModel> trendingCollections = [
    TrendingCollectionModel(title: '3D Art', image: Images.homeTrending1),
    TrendingCollectionModel(title: 'Abstract Art', image: Images.homeTrending2),
    TrendingCollectionModel(title: 'Portrait Art', image: Images.homeTrending3),
    TrendingCollectionModel(title: 'Metaverse', image: Images.homeTrending4),
  ];

  static const List<TopSellersModel> topSellers = [
    TopSellersModel(image: Images.homeTopsellers1, title: 'Wave', subTitle: 'wav2 #5672', number: 0.018),
    TopSellersModel(image: Images.homeTopsellers2, title: 'Abstract Pink', subTitle: 'abstract #2538', number: 0.906),
    TopSellersModel(image: Images.homeTopsellers3, title: 'Wave', subTitle: 'wavepi #5267', number: 0.26),
    TopSellersModel(image: Images.homeTopsellers4, title: 'Abstract23', subTitle: 'abstract #2038', number: 0.246),
    TopSellersModel(image: Images.homeTopsellers5, title: 'Music', subTitle: 'mali #7890', number: 0.46),
    TopSellersModel(image: Images.homeTopsellers6, title: 'Ball', subTitle: 'baalli #4890', number: 0.03),
    TopSellersModel(image: Images.homeTopsellers7, title: 'Ring', subTitle: 'Ring #7288', number: 0.106),
    TopSellersModel(image: Images.homeTopsellers8, title: 'Beer', subTitle: 'Beer #1238', number: 0.26),
  ];

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        backgroundColor: MyColors.primary,
        body: HomeViewBody(
          categories: categories,
          trendingCollections: trendingCollections,
          topSellers: topSellers,
        ),
        extendBody: true,
        bottomNavigationBar: CustomBottomNavBar(),
      ),
    );
  }
}
