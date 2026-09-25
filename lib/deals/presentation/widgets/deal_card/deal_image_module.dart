import 'package:flutter/material.dart';
import 'package:last_minutes_deal/core/constants/asset_paths.dart';
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
      height: 165,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(deal.imageUrl),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(DealStylingConstants.cardRadius),
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
                          height: 25,
                          decoration:
                              DealStylingConstants.liveDealContainerDeco,
                          child: Center(
                            child: Text(
                              DealStylingConstants.liveDealText,
                              style: DealStylingConstants.liveDealTextStyle,
                            ),
                          ),
                        ),
                      )
                    : const SizedBox.shrink(),
                const Spacer(),
                GestureDetector(
                  onTap: onFavoriteTap,
                  child: CircleAvatar(
                    radius: 18.0,
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
