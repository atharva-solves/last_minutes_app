import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class ViewAllButtonModule extends StatelessWidget {
  final VoidCallback? onTap;

  const ViewAllButtonModule({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 25,
        padding: const EdgeInsets.symmetric(horizontal: 9.0, vertical: 6.0),
        decoration: DealStylingConstants.viewAllContainerDeco,
        child: Center(
          child: Text(
            'View All',
            style: DealStylingConstants.liveDealTextStyle,
          ),
        ),
      ),
    );
  }
}
