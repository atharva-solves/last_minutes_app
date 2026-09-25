import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/bottomOption.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_card_module.dart';

class DealHomeView extends GetView<DealHomeController> {
  const DealHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),

        child: Row(
          children: [
            BottomoptionModule(icon: Icons.home_outlined, option: 'Home'),
            SizedBox(width: 40),
            BottomoptionModule(
              icon: Icons.calendar_month_outlined,
              option: 'Bookings',
            ),
            SizedBox(width: 40),
            BottomoptionModule(icon: Icons.favorite_border, option: 'Saved'),
            SizedBox(width: 40),
            BottomoptionModule(icon: Icons.person_outline, option: 'Profile'),
          ],
        ),
      ),
    );
  }
}
