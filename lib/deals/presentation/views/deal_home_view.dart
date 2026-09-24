import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card_module.dart';

class DealHomeView extends GetView<DealHomeController>{
  @override
  Widget build(BuildContext context) {
    throw Center(
      child: DealCardModule(),
    );
  }

}