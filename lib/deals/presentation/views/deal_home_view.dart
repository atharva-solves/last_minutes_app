import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_card_module.dart';

class DealHomeView extends GetView<DealHomeController> {
  const DealHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Obx(
        ()=> DealCardModule(
          deal: controller.hotels[0],
          onBookTap: () {},
          onFavoriteTap: () {
            bool currentFavValue=controller.hotels[0].isFavorite;
            controller.hotels[0].isFavorite=!currentFavValue;
            controller.hotels.refresh();
          },
        ),
      ),
    );
  }
}
