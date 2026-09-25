import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class CheckInOutModule extends StatelessWidget {
  const CheckInOutModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        // Bottom border to separate from the next section (Guests & Rooms)
        border: Border(
          bottom: BorderSide(
            color: DealStylingConstants.borderColor,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        children: [
          // ==========================================
          // LEFT SIDE: CHECK-IN
          // ==========================================
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              decoration: const BoxDecoration(
                // Vertical divider line between Check-in and Check-out
                border: Border(
                  right: BorderSide(
                    color: DealStylingConstants.borderColor,
                    width: 1.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                    color: Color(0xFF6B7280),
                    size: 24.0,
                  ),
                  const SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CHECK-IN',
                        style: GoogleFonts.roboto(
                          fontSize: 10.0, // Smaller than Destination (11.0)
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF4B5563),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Sep 25',
                        style: GoogleFonts.roboto(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          
          // ==========================================
          // RIGHT SIDE: CHECK-OUT
          // ==========================================
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                    color: Color(0xFF6B7280),
                    size: 24.0,
                  ),
                  const SizedBox(width: 12.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CHECK-OUT',
                        style: GoogleFonts.roboto(
                          fontSize: 10.0, // Smaller than Destination (11.0)
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF4B5563),
                          letterSpacing: 0.5,
                        ),
                      ),
                      const SizedBox(height: 4.0),
                      Text(
                        'Sep 25',
                        style: GoogleFonts.roboto(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}