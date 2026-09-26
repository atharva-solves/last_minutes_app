import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/presentation/widgets/bottom_bar/bottomOption.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        padding: const EdgeInsets.fromLTRB(12,8,12,0 ),
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
      );
  }
}