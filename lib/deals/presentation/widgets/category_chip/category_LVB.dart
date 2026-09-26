import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/category_chip_widget.dart';

class CategoryLvb extends GetView<DealHomeController> {
  
  const CategoryLvb({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
                height: 38.0,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categoryList.length,
                  separatorBuilder: (context, index) =>
                      const SizedBox(width: 12.0), 
                  itemBuilder: (context, index) {
                    return Obx(() {
                      final category = controller.categoryList[index];

                      return CategoryChip(
                        category: category,
                        onTap: () => controller.selectCategory(index),
                      );
                    });
                  },
                ),
              );
  }
}