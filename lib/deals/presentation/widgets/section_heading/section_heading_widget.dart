
import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/section_heading/view_all_module.dart';

class SectionHeaderWidget extends StatelessWidget {
  final String title;
  final VoidCallback? onViewAllTap;

  const SectionHeaderWidget({
    super.key,
    required this.title,
    this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: EdgeInsets.symmetric(horizontal: DealStylingConstants.margin),
               
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            style: DealStylingConstants.sectionHeaderStyle,
          ),
          ViewAllButtonModule(
            onTap: onViewAllTap,
          ),
        ],
      ),
    );
  }
}