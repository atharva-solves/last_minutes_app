import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class GuestsAndSearchModule extends StatelessWidget {
  const GuestsAndSearchModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // 1. GUESTS ROW
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Red Icon in circular border
            Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: DealStylingConstants.redColor.withOpacity(0.2),
              ),
              child: const Icon(
                Icons.person_outline,
                color: DealStylingConstants.redColor,
                size: 20.0,
              ),
            ),
            const SizedBox(width: 16.0),
            
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'GUESTS',
                    style: GoogleFonts.roboto(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF9CA3AF),
                      letterSpacing: 0.8,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Row(
                    children: [
                      Text(
                        '2 Guests',
                        style: GoogleFonts.roboto(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                    '• 1 Room',
                    style: GoogleFonts.roboto(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w700,
                      color: const Color(0xFF9CA3AF),
                      letterSpacing: 0.8,
                    ),
                  ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        
        const SizedBox(height: 24.0),
        
        // 2. SEARCH BUTTON
        SizedBox(
          width: double.infinity,
          height: 52.0,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: DealStylingConstants.redColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 20.0,
                ),
                const SizedBox(width: 8.0),
                Text(
                  'Search Stays',
                  style: GoogleFonts.roboto(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class GuestsAndSearchModule extends StatelessWidget {
  const GuestsAndSearchModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
        // Sharp top corners, rounded bottom corners
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(DealStylingConstants.cardRadius),
          bottomRight: Radius.circular(DealStylingConstants.cardRadius),
        ),
      ),
      child: Column(
        children: [
          // ==========================================
          // 1. GUESTS & ROOMS ROW
          // ==========================================
          Row(
            children: [
              const Icon(
                Icons.person_outline,
                color: Color(0xFF6B7280),
                size: 24.0,
              ),
              const SizedBox(width: 12.0),
              
              // Expanded to push the dropdown icon to the far right
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'GUESTS & ROOMS',
                      style: GoogleFonts.roboto(
                        fontSize: 10.0, // Matches Check-in styling
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF4B5563),
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 4.0),
                    Text(
                      '2 Guests, 1 Room',
                      style: GoogleFonts.roboto(
                        fontSize: 14.0, // Matches date styling
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
              
              // Dropdown icon
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Color(0xFFE3342F), // Red matching the button/chip
                size: 24.0,
              ),
            ],
          ),
          
          const SizedBox(height: 20.0), // Space between row and button
          
          // ==========================================
          // 2. SEARCH BUTTON
          // ==========================================
          SizedBox(
            width: double.infinity,
            height: 48.0,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFE3342F), // Red matching the 'All' chip
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 20.0,
                  ),
                  const SizedBox(width: 8.0),
                  Text(
                    'Search Stays',
                    style: GoogleFonts.roboto(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} */