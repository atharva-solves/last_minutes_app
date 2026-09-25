import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:last_minutes_deal/core/constants/asset_paths.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/bottomOption.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/category_chip_widget.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_card_module.dart';
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
          child: Padding(
            padding: const EdgeInsets.all(DealStylingConstants.pagePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage(AssetPaths.logo),
                    ),
                    const Spacer(),
                    IconButton.outlined(
                      iconSize: 28.0,
                      padding: const EdgeInsets.all(6.0),
                      constraints: const BoxConstraints(),
                      style: IconButton.styleFrom(
                        side: const BorderSide(
                          color: Color(0xFF4B5563),
                          width: 1.0,
                        ),
                      ),
                      icon: const Icon(Icons.person_outline, size: 27),
                      color: DealStylingConstants.textColor,
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: DealStylingConstants.sectionGap),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find your next',
                          style: DealStylingConstants.heroHeadlineStyle,
                        ),
                        Row(
                          children: [
                            Text(
                              'escape',
                              style: DealStylingConstants.heroHeadlineStyle
                                  .copyWith(
                                    color: DealStylingConstants.redColor,
                                  ),
                            ),
                            Text(
                              ' today.',
                              style: DealStylingConstants.heroHeadlineStyle,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 9.0),
                    const Text(
                      'Exclusive editorial picks for\nspontaneous travelers.',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF6B7280),
                        height: 1.4,
                      ),
                    ),

                    const SizedBox(height: 30.0),
                    SearchStaysCard(),

                    //Category chips
                    const SizedBox(height: 24.0),

                    SizedBox(
                      height: 38.0,
                      child: GridView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: controller.categoryList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              mainAxisSpacing: 12.0,
                              mainAxisExtent: 60.0,
                            ),
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
                    ),

                    const SizedBox(height: 28.0),

                    // 1. Last Minute Hotels Section
                    SectionHeaderWidget(
                      title: 'Last Minutes Hotels',
                      onViewAllTap: () {},
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: DealStylingConstants.cardHeight,
                      child: Obx(
                        () => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.hotels.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: DealCard(
                                deal: controller.hotels[index],
                                onBookTap: () {},
                                onFavoriteTap: () {
                                  final deal = controller.hotels[index];
                                  controller.hotels[index] = deal.copyWith(
                                    isFavorite: !deal.isFavorite,
                                  );
                                  controller.hotels.refresh();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 28.0),

                    // 2. Last Minute Resorts Section (using GridView.builder as requested)
                    SectionHeaderWidget(
                      title: 'Last Minutes Resorts',
                      onViewAllTap: () {},
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: DealStylingConstants.cardHeight,
                      child: Obx(
                        () => GridView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.resorts.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 16.0,
                                mainAxisExtent: DealStylingConstants.cardWidth,
                              ),
                          itemBuilder: (context, index) {
                            return DealCard(
                              deal: controller.resorts[index],
                              onBookTap: () {},
                              onFavoriteTap: () {
                                final deal = controller.resorts[index];
                                controller.resorts[index] = deal.copyWith(
                                  isFavorite: !deal.isFavorite,
                                );
                                controller.resorts.refresh();
                              },
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 28.0),

                    // 3. Last Minute Villas Section
                    SectionHeaderWidget(
                      title: 'Last Minutes Villas',
                      onViewAllTap: () {},
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: DealStylingConstants.cardHeight,
                      child: Obx(
                        () => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.villas.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: DealCard(
                                deal: controller.villas[index],
                                onBookTap: () {},
                                onFavoriteTap: () {
                                  final deal = controller.villas[index];
                                  controller.villas[index] = deal.copyWith(
                                    isFavorite: !deal.isFavorite,
                                  );
                                  controller.villas.refresh();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    const SizedBox(height: 28.0),

                    // 4. Last Minute Camping Section
                    SectionHeaderWidget(
                      title: 'Last Minutes Camping',
                      onViewAllTap: () {},
                    ),
                    const SizedBox(height: 16.0),
                    SizedBox(
                      height: DealStylingConstants.cardHeight,
                      child: Obx(
                        () => ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: controller.campings.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(right: 16.0),
                              child: DealCard(
                                deal: controller.campings[index],
                                onBookTap: () {},
                                onFavoriteTap: () {
                                  final deal = controller.campings[index];
                                  controller.campings[index] = deal.copyWith(
                                    isFavorite: !deal.isFavorite,
                                  );
                                  controller.campings.refresh();
                                },
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: DealStylingConstants.sectionGap),
                    const SizedBox(height: DealStylingConstants.sectionGap),
                    const SizedBox(height: DealStylingConstants.sectionGap),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Color(0xFFE5E7EB), width: 1.0)),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomoptionModule(icon: Icons.home, option: 'Home'),
            BottomoptionModule(
              icon: Icons.calendar_month_outlined,
              option: 'Bookings',
            ),
            BottomoptionModule(icon: Icons.favorite_border, option: 'Saved'),
            BottomoptionModule(icon: Icons.person_outline, option: 'Profile'),
          ],
        ),
      ),
    );
  }
}
