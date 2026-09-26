import 'package:flutter/material.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class BottomoptionModule extends StatelessWidget {
  final IconData icon;
  final String option;

  const BottomoptionModule({
    super.key,
    required this.icon,
    required this.option,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize:
          MainAxisSize.min, // Prevents column from taking infinite height
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: const Color.fromARGB(255, 126, 126, 126), size: 22.0),
        const SizedBox(height: 1.0),
        Text(
          option,
          style: TextStyle(
            color: const Color.fromARGB(255, 126, 126, 126),
            fontSize: 12.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
