import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/domain/entities/category_chip_entity.dart';

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
    final isSelected = category.isSelected;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        decoration: BoxDecoration(
          // Dark fill when selected, soft light grey when unselected
          color: isSelected ? const Color(0xFF0F172A) : const Color(0xFFF3F4F6),
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Center(
          child: Text(
            category.name,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w600,
              color: isSelected ? Colors.white : const Color(0xFF1F2937),
            ),
          ),
        ),
      ),
    );
  }
}