import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:nft_marketplace/core/resources/color_value_manager.dart';
import 'package:nft_marketplace/core/resources/text_style_manager.dart';

class RankingActivityWidget extends StatefulWidget {
  const RankingActivityWidget({super.key});

  @override
  State<RankingActivityWidget> createState() => _RankingActivityWidgetState();
}

class _RankingActivityWidgetState extends State<RankingActivityWidget> {
  bool isRankingSelected = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => setState(() {
                  isRankingSelected = true;
                }),
                child: Column(
                  children: [
                    Text(
                      '􀣉 Ranking',
                      style: isRankingSelected ? TextStyles.s16w600 : TextStyles.s16w600.copyWith(color: MyColors.grey),
                    ),
                    const Gap(16),
                  ],
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () => setState(() {
                  isRankingSelected = false;
                }),
                child: Column(
                  children: [
                    Row(
                      children: [
                        FaIcon(
                          FontAwesomeIcons.chartLine,
                          color: isRankingSelected ? MyColors.grey : MyColors.white,
                          size: 16,
                        ),
                        Text(
                          '  Activity',
                          style: isRankingSelected
                              ? TextStyles.s16w600.copyWith(color: MyColors.grey)
                              : TextStyles.s16w600,
                        ),
                      ],
                    ),
                    const Gap(16),
                  ],
                ),
              ),
            ],
          ),
        ),
        Stack(
          children: [
            const Divider(
              color: MyColors.divider,
              thickness: 1.5,
            ),
            isRankingSelected
                ? Positioned(
                    top: 3.5,
                    left: 60,
                    child: buildSmallThickDivider(),
                  )
                : Positioned(
                    top: 3.5,
                    right: 60,
                    child: buildSmallThickDivider(),
                  ),
          ],
        ),
      ],
    );
  }

  Widget buildSmallThickDivider() {
    return Container(
      width: 105,
      height: 4,
      decoration: const BoxDecoration(
        color: MyColors.smallThickDivider,
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
            color: MyColors.smallThickDivider,
            offset: Offset(0, -6),
            blurRadius: 16,
          ),
        ],
      ),
    );
  }
}
