import 'package:flutter/material.dart';

import 'package:last_minutes_deal/core/constants/asset_paths.dart';

import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: DealStylingConstants.margin,
        vertical: 16.0,
      ),

      child: Row(
        children: [
          // Logo & Title
          const CircleAvatar(
            radius: 16.0,

            backgroundColor: DealStylingConstants.redColor,

            child: Icon(
              Icons.local_fire_department,
              color: Colors.white,
              size: 20.0,
            ),
          ),

          const SizedBox(width: 8.0),

          const Text(
            'Last Minutes Deal',

            style: TextStyle(
              color: Colors.white,

              fontSize: 16.0,

              fontWeight: FontWeight.w700,
            ),
          ),

          const Spacer(),

          // Notification Bell
          Container(
            padding: const EdgeInsets.all(6.0),

            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color.fromARGB(66, 255, 255, 255),
              border: Border.all(color: const Color.fromARGB(55, 255, 255, 255), width: 1.0),
            ),

            child: const Icon(
              Icons.notifications_outlined,

              color: Colors.white,

              size: 20.0,
            ),
          ),

          const SizedBox(width: 12.0),

          // Profile Placeholder (Pixel Perfect Size)
          const CircleAvatar(
            radius: 16.0,

            backgroundColor: Color(0xFF4B5563), // Dark grey placeholder

            child: Icon(Icons.person, color: Colors.white, size: 20.0),
          ),
        ],
      ),
    );
  }
}
