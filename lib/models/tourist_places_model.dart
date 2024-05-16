// ignore_for_file: public_member_api_docs, sort_constructors_first
class TouristPlacesModel {
  final String name;
  final String image;
  TouristPlacesModel({
    required this.name,
    required this.image,
  });
}

List<TouristPlacesModel> touristPlaces = [
  TouristPlacesModel(name: "Ciel", image: "assets/icons/mountain.png"),
  TouristPlacesModel(name: "Ricolino", image: "assets/icons/beach.png"),
  TouristPlacesModel(name: "Gamesa", image: "assets/icons/forest.png"),
  TouristPlacesModel(name: "Sabritas", image: "assets/icons/city.png"),
  TouristPlacesModel(name: "Barcel", image: "assets/icons/desert.png"),
];
