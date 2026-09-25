import 'package:flutter/material.dart';
import 'package:last_minutes_deal/core/constants/asset_paths.dart';
import 'package:last_minutes_deal/deals/domain/entities/deal_entity.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class DealCardModule extends StatelessWidget {
  final DealEntity deal;
  final VoidCallback? onBookTap;
  final VoidCallback? onFavoriteTap;

  const DealCardModule({
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
            SizedBox(
              height: 165,
              child: Container(
                decoration: DealStylingConstants.imageContainerDeco,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: AlignmentGeometry.topStart,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        deal.isLiveDeal
                            ? Flexible(
                                child: Container(
                                  height: 25,

                                  decoration: DealStylingConstants
                                      .liveDealContainerDeco,
                                  child: Center(
                                    child: Text(
                                      DealStylingConstants.liveDealText,
                                      style: DealStylingConstants
                                          .liveDealTextStyle,
                                    ),
                                  ),
                                ),
                              )
                            : SizedBox.shrink(),
                        Spacer(),
                        GestureDetector(
                          onTap: onFavoriteTap,
                          child: CircleAvatar(
                            radius: 18.0,
                            child: Icon(
                                deal.isFavorite
                                  ? Icons.favorite 
                                  : Icons.favorite_border,
                              size: 18.0,
                             color: Colors.red,
                                  
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(deal.name, style: DealStylingConstants.cardNameStyle),

                  const SizedBox(height: 8.0),
                  Row(
                    children: [
                      Icon(
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
                      Icon(
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

                  const SizedBox(height: 8.0),
                  Container(
                    height: 40.0,
                    width: double.infinity,
                    margin: EdgeInsets.symmetric(horizontal: 1),
                    decoration: DealStylingConstants.bookNowContDeco,
                    child: Center(
                      child: Text(
                        'Book Now',
                        style: DealStylingConstants.bookAndCatChipTextStyle,
                      ),
                    ),
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
