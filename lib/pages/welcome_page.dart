import 'package:flutter/material.dart';
import 'package:castro0331/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Image.asset(
                  'assets/illustration.png',
                ),
                const SizedBox(height: 40),
                const Text(
                  "Oxxo a la vuelta de tu vida",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFB71C1C), // Un tono de rojo más elegante
                    fontFamily:
                        'Raleway', // Fuente personalizada para elegancia
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Encuentra tus productos de la mejor calidad solo con nosotros",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFFD32F2F), // Rojo suave para el subtítulo
                    fontSize: 18,
                    fontFamily: 'Raleway', // Fuente personalizada
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomePage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFC62828), // Rojo oscuro y elegante
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 15,
                          horizontal: 8.0,
                        ),
                      ),
                      child: const Text(
                        "Iniciar",
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontSize: 16,
                          fontFamily: 'Raleway', // Fuente personalizada
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
