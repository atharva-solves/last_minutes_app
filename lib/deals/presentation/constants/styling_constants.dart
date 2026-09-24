import 'package:flutter/material.dart';

class StylingConstants {
  // Private constructor prevents instantiation
  StylingConstants._();

  // Strings
  static const String liveDealText = "Live Deal";
  static const String headlineText = "India's home for last minute stays";

  // Colors
  static const Color bgColor = Color(0xFFFFFFFF);
  static const Color textColor = Color(0xFF111827);
  static const Color redColor = Color(0xFFDC2626);
  static const Color borderColor = Color(0xFFE5E7EB);
  static const Color borderLightColor = Color(0xFFF3F4F6);
  static const Color shadowColor = Color.fromRGBO(0, 0, 0, 0.06);

  // Spacing & Layout
  static const double pagePadding = 16.0;
  static const double sectionGap = 24.0;
  static const double cardGap = 12.0;
  
  static const double cardWidth = 160.0;
  static const double listingImageSize = 100.0;
  static const double cardPadding = 12.0; // using the max of 10-12px
  static const double cardRadius = 16.0; // using the max of 12-16px
  static const double pillRadius = 20.0;

  // Text Sizes (Component Level)
  static const double textSizeName = 14.0; // between 13-15px
  static const double textSizeLocation = 12.0; // between 10-12px
  static const double textSizeRating = 12.0; // between 11-14px
  static const double textSizePrice = 15.0; // between 14-16px
  static const double textSizeBtn = 11.0;
  
  // Text Sizes (Page Level - Inferred from Material structure)
  static const double textSizeHeroHeadline = 32.0;
  static const double textSizeSectionHeader = 20.0;
  static const double textSizeFormLabel = 10.0;

  // Text Styles (Ready to use)
  static const TextStyle cardNameStyle = TextStyle(
    fontSize: textSizeName,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle cardPriceStyle = TextStyle(
    fontSize: textSizePrice,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle cardLocationStyle = TextStyle(
    fontSize: textSizeLocation,
    color: textColor,
  );

  static const TextStyle cardRatingStyle = TextStyle(
    fontSize: textSizeRating,
    color: textColor,
  );

  static const TextStyle cardBtnStyle = TextStyle(
    fontSize: textSizeBtn,
    fontWeight: FontWeight.bold,
    color: textColor,
  );
  
  static const TextStyle heroHeadlineStyle = TextStyle(
    fontSize: textSizeHeroHeadline,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  static const TextStyle sectionHeaderStyle = TextStyle(
    fontSize: textSizeSectionHeader,
    fontWeight: FontWeight.bold,
    color: textColor,
  );

  // Reusable Shadow
  static const BoxShadow cardShadow = BoxShadow(
    color: shadowColor,
    blurRadius: 12.0,
    offset: Offset(0, 4),
  );
}