import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:last_minutes_deal/deals/domain/entities/deal_entity.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';
import 'package:last_minutes_deal/deals/presentation/controller/deal_home_controller.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/deal_card/deal_card_module.dart';

class DealCardLvb extends GetView<DealHomeController> {
  final List<DealEntity> dealList;
  const DealCardLvb({super.key, required this.dealList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                height: DealStylingConstants.cardHeight,
                child: Obx(
                  () => ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: dealList.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: DealCard(
                          deal: dealList[index],
                          onBookTap: () {},
                          onFavoriteTap: () {
                            final deal = dealList[index];
                            dealList[index] = deal.copyWith(
                              isFavorite: !deal.isFavorite,
                            );
                            controller.campings.refresh();
                            controller.villas.refresh();
                            controller.resorts.refresh();
                            controller.hotels.refresh();
                          },
                        ),
                      );
                    },
                  ),
                ),
              );
  }
}