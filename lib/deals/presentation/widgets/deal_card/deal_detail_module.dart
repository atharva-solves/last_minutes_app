import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/domain/entities/deal_entity.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class DealDetailModule extends StatelessWidget {
  final DealEntity deal;

  const DealDetailModule({super.key, required this.deal});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          deal.name,
          style: DealStylingConstants.cardNameStyle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        const SizedBox(height: 4.0), // Reduced spacing
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 237, 239, 242), // Solid red background
            borderRadius: BorderRadius.circular(12.0), // Rounded pill shape
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.location_on_outlined,
                size: DealStylingConstants.locAndRateIconSize,
                color: DealStylingConstants.cardDetailIconColor,
              ),
              const SizedBox(width: 2.0),
              Text(
                deal.location, // Removed trailing comma to match UI
                style: DealStylingConstants.cardLocationStyle,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(height: 4.0), // Reduced spacing
        Row(
          children: [
            const Icon(
              Icons.star,
              size: DealStylingConstants.locAndRateIconSize,
              color: DealStylingConstants.cardDetailIconColor,
            ),
            const SizedBox(width: 4.0),
            Text(
              deal.rating.toString(),
              style: DealStylingConstants.cardRatingStyle,
            ),
            const SizedBox(width: 4.0),
            Text(
              '(${deal.reviewCount})',
              style: DealStylingConstants.reviewCountStyle,
            ),
          ],
        ),
        // Note: Price row was moved to DealCard to sit adjacent to the button
      ],
    );
  }
}
