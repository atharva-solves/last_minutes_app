import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/domain/entities/deal_entity.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class DealDetailModule extends StatelessWidget {
  final DealEntity deal;

  const DealDetailModule({
    super.key,
    required this.deal,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(deal.name, style: DealStylingConstants.cardNameStyle),
        const SizedBox(height: 8.0),
        Row(
          children: [
            const Icon(
              Icons.location_on_outlined,
              size: 18,
              color: Color.fromARGB(255, 98, 105, 118),
            ),
            const SizedBox(width: 3.0),
            Text(
              '${deal.location},',
              style: DealStylingConstants.cardLocationStyle,
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            const Icon(
              Icons.star,
              size: 18,
              color: DealStylingConstants.redColor,
            ),
            const SizedBox(width: 3.0),
            Text(
              deal.rating.toString(),
              style: DealStylingConstants.cardRatingStyle,
            ),
            Text(
              '(${deal.reviewCount.toString()})',
              style: DealStylingConstants.reviewCountStyle,
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Row(
          children: [
            Text(
              '${deal.currencySymbol} ${deal.pricePerNight}',
              style: DealStylingConstants.cardPriceStyle,
            ),
            Text(
              ' / night',
              style: DealStylingConstants.reviewCountStyle,
            ),
          ],
        ),
      ],
    );
  }
}