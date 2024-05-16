// ignore_for_file: public_member_api_docs, sort_constructors_first
class RecommendedPlaceModel {
  final String image;
  final double rating;
  final String location;
  RecommendedPlaceModel({
    required this.image,
    required this.rating,
    required this.location,
  });
}

List<RecommendedPlaceModel> recommendedPlaces = [
  RecommendedPlaceModel(
    image: "assets/places/place5.jpg",
    rating: 4.4,
    location: "Oxxo Rufino tamayo",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place4.jpg",
    rating: 4.4,
    location: "Oxxo miguel de la madrid",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place3.jpg",
    rating: 4.4,
    location: "Oxxo Lucero",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place2.jpg",
    rating: 4.4,
    location: "Oxxo Humariza",
  ),
  RecommendedPlaceModel(
    image: "assets/places/place1.jpg",
    rating: 4.4,
    location: "Oxxo Yepomera",
  ),
];
