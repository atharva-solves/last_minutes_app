import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:last_minutes_deal/core/constants/asset_paths.dart';

class DealStylingConstants {
  // Private constructor prevents instantiation
  DealStylingConstants._();

  // ============================================================
  // STRINGS
  // ============================================================

  static const String liveDealText = "Live Deal";
  static const String headlineText = "India's home for last minute stays";

  // ============================================================
  // COLORS
  // ============================================================

  static const Color bgColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFF111827);
  static const Color redColor = Color(0xFFDC2626);
  static const Color borderColor = Color(0xFFE5E7EB);
  static const Color borderLightColor = Color(0xFFF3F4F6);
  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.06);

  // ============================================================
  // SPACING & LAYOUT
  // ============================================================

  static const double pagePadding = 16.0;
  static const double sectionGap = 24.0;
  static const double cardGap = 12.0;

  static const double cardWidth = 270.0;
  static const double cardHeight = 355.0;
  static const double listingImageSize = 100.0;
  static const double cardPadding = 12.0;
  static const double cardRadius = 16.0;
  static const double liveDealPillRadius = 20.0;
  static const double cardBookBtnRadius = 10.0;

  // ============================================================
  // TEXT SIZES
  // ============================================================

  // Card
  static const double textSizeName = 16;
  static const double textSizeLocation = 13.0;
  static const double textSizeRating = 12.0;
  static const double textSizePrice = 16.0;
  static const double textSizeBtn = 12.0;

  // Page
  static const double textSizeHeroHeadline = 32.0;
  static const double textSizeSectionHeader = 20.0;
  static const double textSizeFormLabel = 10.0;

  // ============================================================
  // TEXT STYLES
  // ============================================================

  /// "Live Deal"
  static TextStyle get liveDealTextStyle => GoogleFonts.roboto(
    fontSize: 13.0,
    fontWeight: FontWeight.w700,
    color: redColor,
  );

  /// Category chips / View all / similar small buttons
  static TextStyle get bookAndCatChipTextStyle => GoogleFonts.roboto(
    fontSize: 12.0,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  /// Hotel / Villa name
  /// Example: "Villas_24"
  static TextStyle get cardNameStyle => GoogleFonts.roboto(
    fontSize: textSizeName,
    fontWeight: FontWeight.w600,
    color: Colors.black,
  );

  /// Price
  /// Example: "₹20,000"
  static TextStyle get cardPriceStyle => GoogleFonts.roboto(
    fontSize: textSizePrice,
    fontWeight: FontWeight.w700,
    color: textColor,
  );

  /// Location
  /// Example: "Lonavala,"
  static TextStyle get cardLocationStyle => GoogleFonts.roboto(
    fontSize: textSizeLocation,
    fontWeight: FontWeight.w400,
    color: Color(0xFF6B7280),
  );

  static TextStyle get reviewCountStyle => GoogleFonts.roboto(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: Color(0xFF6B7280),
  );

  /// Rating
  /// Example: "4.6 (87)"
  static TextStyle get cardRatingStyle => GoogleFonts.roboto(
    fontSize: textSizeRating,
    fontWeight: FontWeight.w500,
    color: redColor,
  );

  /// Book Now
  static TextStyle get cardBtnStyle => GoogleFonts.roboto(
    fontSize: textSizeBtn,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  /// Hero headline
  static TextStyle get heroHeadlineStyle => GoogleFonts.roboto(
    fontSize: textSizeHeroHeadline,
    fontWeight: FontWeight.w900,
    color: textColor,
    letterSpacing: -1.0,
  );

  /// Section title
  /// Example: "Last Minutes Villas"
  static TextStyle get sectionHeaderStyle => GoogleFonts.roboto(
    fontSize: textSizeSectionHeader,
    fontWeight: FontWeight.w700,
    color: Colors.black,
  );

  // ============================================================
  // SHADOW
  // ============================================================

  static const BoxShadow cardShadow = BoxShadow(
    color: shadowColor,
    blurRadius: 6.0,
    offset: Offset(0, 4),
  );

  // ============================================================
  // CONTAINER DECORATIONS
  // ============================================================

  static BoxDecoration liveDealContainerDeco = BoxDecoration(
    color: const Color(0xFFFFEEEE),
    borderRadius: BorderRadius.circular(liveDealPillRadius),
  );

   static BoxDecoration viewAllContainerDeco = BoxDecoration(
    color: const Color(0xFFFFEEEE),
    borderRadius: BorderRadius.circular(8.0),
  );

  static BoxDecoration bookNowContDeco = BoxDecoration(
    borderRadius: BorderRadius.circular(cardBookBtnRadius),
    border: Border.all(color: Colors.black, width: 1.0),
  );
}
