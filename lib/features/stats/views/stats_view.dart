import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nft_marketplace/features/stats/widgets/stats_view_body.dart';

class StatsView extends StatelessWidget {
  const StatsView({super.key});
  static const route = 'stats view';

  @override
  Widget build(BuildContext context) {
    return const AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: StatsViewBody(),
      ),
    );
  }
}
