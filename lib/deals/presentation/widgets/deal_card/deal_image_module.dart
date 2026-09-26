import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/domain/entities/deal_entity.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class DealImageModule extends StatelessWidget {
  final DealEntity deal;
  final VoidCallback? onFavoriteTap;

  const DealImageModule({
    super.key,
    required this.deal,
    required this.onFavoriteTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115, // Reduced height to allow more space for details
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(deal.imageUrl),
            fit: BoxFit.cover,
          ),
          // Only round the top corners to match the card edges
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(DealStylingConstants.cardRadius),
          ),
        ),
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
                          height: 24,
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          decoration: BoxDecoration(
                            color: DealStylingConstants.redColor, // Solid red background
                            borderRadius: BorderRadius.circular(12.0), // Rounded pill shape
                          ),
                          child: Center(
                            child: Text(
                              DealStylingConstants.liveDealText,
                              style: const TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w600,
                                color: Colors.white, // White text to match UI
                              ),
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                const Spacer(),
                GestureDetector(
                  onTap: onFavoriteTap,
                  child: CircleAvatar(
                    radius: 16.0, 
                    backgroundColor: Colors.white,
                    child: Icon(
                      deal.isFavorite ? Icons.favorite : Icons.favorite_border,
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
    );
  }
}