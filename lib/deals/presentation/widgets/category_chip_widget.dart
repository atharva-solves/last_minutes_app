import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/domain/entities/category_chip_entity.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class CategoryChip extends StatelessWidget {
  final CategoryEntity category;
  final VoidCallback onTap;

  const CategoryChip({
    super.key,
    required this.category,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.0,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: category.isSelected
                ? DealStylingConstants.redColor
                : DealStylingConstants.bgColor,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: category.isSelected
                  ? DealStylingConstants.redColor
                  : DealStylingConstants.borderColor,
              width: 1.0,
            ),
          ),
          child: Center(
            child: Text(
              category.name,
              style: DealStylingConstants.cardBtnStyle.copyWith(
                color: category.isSelected ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}