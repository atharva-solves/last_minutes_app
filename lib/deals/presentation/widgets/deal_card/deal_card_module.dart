import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/domain/entities/deal_entity.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/book_now_module.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_detail_module.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_image_module.dart';

class DealCard extends StatelessWidget {
  final DealEntity deal;
  final VoidCallback? onBookTap;
  final VoidCallback? onFavoriteTap;

  const DealCard({
    super.key,
    required this.deal,
    required this.onBookTap,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DealStylingConstants.cardWidth,
      height: DealStylingConstants.cardHeight,
      // Removed internal padding so the image can touch the edges
      decoration: BoxDecoration(
        color: DealStylingConstants.bgColor,
        borderRadius: BorderRadius.circular(DealStylingConstants.cardRadius),
        border: Border.all(color: DealStylingConstants.borderColor),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(DealStylingConstants.cardRadius),
        child: Column(
          children: [
            // 1. Image, Live Deal Tag, and Favorite Icon Module
            DealImageModule(
              deal: deal,
              onFavoriteTap: onFavoriteTap,
            ),
            Expanded(
              // 2. Padding applied ONLY to the details/bottom section
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // 3. Deal Details Module (Name, Location, Rating)
                    DealDetailModule(
                      deal: deal,
                    ),
                    // 4. Price and Book Now Button Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${deal.currencySymbol}${deal.pricePerNight}',
                              style: DealStylingConstants.cardPriceStyle,
                            ),
                            Text(
                              '/night',
                              style: DealStylingConstants.reviewCountStyle,
                            ),
                          ],
                        ),
                        BookNowButtonModule(
                          onBookTap: onBookTap,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}