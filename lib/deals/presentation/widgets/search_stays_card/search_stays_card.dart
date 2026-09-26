
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/search_stays_card/check_in_out_module.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/search_stays_card/destination_module.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/search_stays_card/guest_and_search_module.dart';

class SearchStaysCard extends GetView<DealHomeController> {
  const SearchStaysCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 18.0),
      padding: const EdgeInsets.all(20.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: DealStylingConstants.bgColor,
        borderRadius: BorderRadius.circular(24.0), // Matched rounded corners from design
        boxShadow: const [
          BoxShadow(
            color: DealStylingConstants.shadowColor,
            blurRadius: 15.0,
            offset: Offset(0, 8),
          ),
        ],
      ),
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DestinationModule(),
          
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              height: 1.0, 
              color: DealStylingConstants.borderLightColor, 
              indent: 48.0, // Indented past the icon
            ),
          ),
          
          CheckInOutModule(),
          
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.0),
            child: Divider(
              height: 1.0, 
              color: DealStylingConstants.borderLightColor, 
              indent: 48.0, // Indented past the icon
            ),
          ),
          
          GuestsAndSearchModule(),
        ],
      ),
    );
  }
}
/* import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/search_stays_card/check_in_out_module.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/search_stays_card/destination_module.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/search_stays_card/guest_and_search_module.dart';

class SearchStaysCard extends GetView<DealHomeController> {
  const SearchStaysCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 18),
      width: double.infinity,
      decoration: BoxDecoration(
        color: DealStylingConstants.bgColor, // White/Greyish background
        borderRadius: BorderRadius.circular(DealStylingConstants.cardRadius),
        border: Border.all(color: DealStylingConstants.borderColor, width: 1.0),
        boxShadow: const [DealStylingConstants.cardShadow],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ==========================================
          // 1. DESTINATION CONTAINER
          // ==========================================
         DestinationModule(),
          // Next sections (Check-in, Guests, Search Button) will go here
          CheckInOutModule(),

          //search and stay module
          GuestsAndSearchModule(),
        ],
      ),
    );
  }
} */