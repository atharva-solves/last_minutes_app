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
        height: 26.0, // Reduced height
        padding: const EdgeInsets.symmetric(horizontal: 11.0), // Allows width to adapt to text
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