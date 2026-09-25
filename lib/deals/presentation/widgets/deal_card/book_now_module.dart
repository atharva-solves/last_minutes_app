import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class BookNowButtonModule extends StatelessWidget {
  final VoidCallback? onBookTap;

  const BookNowButtonModule({
    super.key,
    required this.onBookTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onBookTap,
      child: Container(
        height: 40.0,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 1),
        decoration: DealStylingConstants.bookNowContDeco,
        child: Center(
          child: Text(
            'Book Now',
            style: DealStylingConstants.bookAndCatChipTextStyle,
          ),
        ),
      ),
    );
  }
}