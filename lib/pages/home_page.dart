import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:castro0331/widgets/custom_icon_button.dart';
import 'package:castro0331/widgets/location_card.dart';
import 'package:castro0331/widgets/nearby_places.dart';
import 'package:castro0331/widgets/recommended_places.dart';
import 'package:castro0331/widgets/tourist_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red.shade700, // Fondo rojo guinda
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "¡Bienvenido!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Oxxo web",
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ],
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline,
                color: Colors.white), // Icono blanco
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 12),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline,
                  color: Colors.white), // Icono blanco
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LocationCard(),
            const SizedBox(height: 15),
            const TouristPlaces(),
            const SizedBox(height: 20),
            _buildSectionTitle(context, "Recomendaciones"),
            const RecommendedPlaces(),
            const SizedBox(height: 20),
            _buildSectionTitle(context, "Cerca de ti"),
            const NearbyPlaces(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline,
                color: Color(0xff6c1b15)), // Icono blanco
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.bookmark_outline,
                color: Color(0xff6c1b15)), // Icono blanco
            label: "Favoritos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline,
                color: Color(0xff6c1b15)), // Icono blanco
            label: "Productos",
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline,
                color: Color(0xff6c1b15)), // Icono blanco
            label: "Perfil",
          )
        ],
      ),
    );
  }

  Widget _buildSectionTitle(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: Colors.red.shade700, // Rojo guinda
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Ver todo",
              style: TextStyle(
                color: Color(0xffab1409), // Rojo guinda
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
