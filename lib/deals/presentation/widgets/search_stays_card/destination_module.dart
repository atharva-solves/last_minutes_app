import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class DestinationModule extends StatelessWidget {
  const DestinationModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
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
            Icons.location_on_outlined,
            color: DealStylingConstants.redColor,
            size: 20.0,
          ),
        ),
        const SizedBox(width: 16.0),

        // Text Column
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'DESTINATION',
                style: GoogleFonts.roboto(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF9CA3AF),
                  letterSpacing: 0.8,
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                'Goa, India',
                style: GoogleFonts.roboto(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        
        // Trailing Chevron
        const Icon(
          Icons.keyboard_arrow_down_rounded,
          color: Color(0xFF9CA3AF),
          size: 24.0,
        ),
      ],
    );
  }
}
/* import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_minutes_deal/deals/presentation/constants/deal_styling_constants.dart';

class DestinationModule extends StatelessWidget {
  const DestinationModule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
      decoration: const BoxDecoration(
        // Top corners rounded (matching outer card), bottom corners straight
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(DealStylingConstants.cardRadius),
          topRight: Radius.circular(DealStylingConstants.cardRadius),
        ),
        // Bottom border to separate from the next section (Dates)
        border: Border(
          bottom: BorderSide(
            color: DealStylingConstants.borderColor,
            width: 1.0,
          ),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left side: Location Icon
          const Icon(
            Icons.location_on_outlined,
            color: Color(0xFF6B7280),
            size: 24.0,
          ),
          const SizedBox(width: 12.0),

          // Right side: Text Column
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Label Text (Slightly dark greyish and bold)
                Text(
                  'DESTINATION',
                  style: GoogleFonts.roboto(
                    fontSize: 11.0,
                    fontWeight: FontWeight.w700,
                    color: const Color(0xFF4B5563),
                    letterSpacing: 0.5,
                  ),
                ),
                const SizedBox(height: 4.0),

                // Hint Text (Lighter and thinner)
                Text(
                  'Where are you heading?',
                  style: GoogleFonts.roboto(
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF9CA3AF),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 */