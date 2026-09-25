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
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: DealStylingConstants.bgColor,
        borderRadius: BorderRadius.circular(DealStylingConstants.cardRadius),
        border: Border.all(color: DealStylingConstants.borderColor),
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DealStylingConstants.cardRadius),
        ),
        child: Column(
          children: [
            // 1. Image, Live Deal Tag, and Favorite Icon Module
            DealImageModule(
              deal: deal,
              onFavoriteTap: onFavoriteTap,
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 2. Deal Details Module (Name, Location, Rating, Price)
                  DealDetailModule(
                    deal: deal,
                  ),
                  const SizedBox(height: 8.0),
                  // 3. Book Now Button Module
                  BookNowButtonModule(
                    onBookTap: onBookTap,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}