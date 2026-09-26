import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:last_minutes_deal/core/constants/asset_paths.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/appBar.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/bg_gradient.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/bottom_bar/bottomOption.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/bottom_bar/bottom_container.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/category_chip/category_LVB.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/category_chip_widget.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_card_LVB.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_card_module.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/hero_heading_text.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/search_stays_card/search_stays_card.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/section_heading/section_heading_widget.dart';

class DealHomeView extends GetView<DealHomeController> {
  const DealHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DealStylingConstants.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              // Background gradient container
             BackgroundGradientContainer(),
              
              // Foreground content
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppbarWidget(),
                  const SizedBox(height: DealStylingConstants.sectionGap),
                  HeroHeadingText(),
                        
                  const SizedBox(height: 20.0),
                  SearchStaysCard(),
                        
                  //Category chips
                  const SizedBox(height: 24.0),
                        
                  CategoryLvb(),
                        
                  const SizedBox(height: 28.0),
                        
                  // 1. Last Minute Hotels Section
                  SectionHeaderWidget(
                    title: 'Last Minutes Hotels',
                    onViewAllTap: () {},
                  ),
                  const SizedBox(height: 16.0),
                  
                  DealCardLvb(dealList: controller.hotels),
                        
                  const SizedBox(height: 28.0),
                        
                  // 2. Last Minute Resorts Section (using GridView.builder as requested)
                  SectionHeaderWidget(
                    title: 'Last Minutes Resorts',
                    onViewAllTap: () {},
                  ),
                  const SizedBox(height: 16.0),
                  
                  DealCardLvb(dealList: controller.resorts),
                        
                  const SizedBox(height: 28.0),
                        
                  // 3. Last Minute Villas Section
                  SectionHeaderWidget(
                    title: 'Last Minutes Villas',
                    onViewAllTap: () {},
                  ),
                  const SizedBox(height: 16.0),
                 
                  DealCardLvb(dealList: controller.villas),
                        
                  const SizedBox(height: 28.0),
                        
                  // 4. Last Minute Camping Section
                  SectionHeaderWidget(
                    title: 'Last Minutes Camping',
                    onViewAllTap: () {},
                  ),
                  const SizedBox(height: 16.0),
                  
                  DealCardLvb(dealList: controller.campings),
                  const SizedBox(height: 16.0),
                        
                  BottomContainer(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}