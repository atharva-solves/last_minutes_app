import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class BackgroundGradientContainer extends StatelessWidget {
  const BackgroundGradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
                alignment: Alignment.topCenter,
                child: Container(
                  // Adjust height to cover the top section behind your headers and search card
                  height: 300.0,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50.0),
                      bottomRight: Radius.circular(50.0),
                    ),
                    gradient: RadialGradient(
                      center: Alignment.bottomRight,
                      radius: 0.75,
                      colors: [
                        DealStylingConstants.redColor,
                        Colors.black,
                      ],
                    ),
                  ),
                ),
              );
  }
}