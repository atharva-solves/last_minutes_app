class DealEntity {
  final String id;
  final String name;
  final String imageUrl;
  final String location;
  final double rating;
  final int reviewCount;
  final double pricePerNight;
  final String currencySymbol;
   bool isLiveDeal;
   bool isFavorite;
  final String category;

   DealEntity({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.rating,
    required this.reviewCount,
    required this.pricePerNight,
    this.currencySymbol = '₹',
    required this.isLiveDeal ,
    required this.isFavorite ,
    required this.category,
  });

  /// Helper method state updates/toggling
  DealEntity copyWith({
    String? id,
    String? name,
    String? imageUrl,
    String? location,
    double? rating,
    int? reviewCount,
    double? pricePerNight,
    String? currencySymbol,
    bool? isLiveDeal,
    bool? isFavorite,
    String? category,
  }) {
    return DealEntity(
      id: id ?? this.id,
      name: name ?? this.name,
      imageUrl: imageUrl ?? this.imageUrl,
      location: location ?? this.location,
      rating: rating ?? this.rating,
      reviewCount: reviewCount ?? this.reviewCount,
      pricePerNight: pricePerNight ?? this.pricePerNight,
      currencySymbol: currencySymbol ?? this.currencySymbol,
      isLiveDeal: isLiveDeal ?? this.isLiveDeal,
      isFavorite: isFavorite ?? this.isFavorite,
      category: category ?? this.category,
    );
  }
}
