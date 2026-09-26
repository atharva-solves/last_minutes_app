import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class HeroHeadingText extends StatelessWidget {
  const HeroHeadingText({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: DealStylingConstants.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                "India's home for ",
                style: DealStylingConstants.heroHeadlineStyle.copyWith(color: Colors.white),
              ),
              Text(
                "last",
                style: DealStylingConstants.heroHeadlineStyle.copyWith(color: DealStylingConstants.redColor),
              ),
            ],
          ),
          Text(
            "minute stays.",
            style: DealStylingConstants.heroHeadlineStyle.copyWith(color: DealStylingConstants.redColor),
          ),
        ],
      ),
    );
  }
}