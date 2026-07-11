import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/images_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';
import 'package:nft_marketplace/features/home/widgets/category_container.dart';
import 'package:nft_marketplace/features/home/widgets/category_container2.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = 'home view';

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
        body: const Column(
          children: [
            SizedBox(width: double.infinity),
            Gap(20),
            CategoryContainer2(
              image: Images.homeCategory2,
              title: 'Art',
            ),
          ],
        ),
      ),
    );
  }
}
