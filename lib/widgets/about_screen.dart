import 'package:flutter/material.dart';
import 'package:gallery_app/models/data.dart'; // Importieren Sie Ihre Daten

class AboutScreen extends StatelessWidget {
  final ValueChanged<int> onNavigate; // Callback, um die Navigation zu steuern

  const AboutScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyGallery'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange, // Passende Farbe
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profilbild
              CircleAvatar(
                radius: 80,
                backgroundImage: const AssetImage('assets/images/Profil.jpg'),
                onBackgroundImageError: (exception, stackTrace) {
                  // Fallback, falls das Bild nicht geladen werden kann
                  debugPrint('Error loading profile image: $exception');
                },
                child: Builder(
                  // Builder, um den Kontext für den Icon zu bekommen
                  builder: (context) {
                    // Zeigt ein Icon, wenn das Bild nicht geladen werden kann

                    return const SizedBox.shrink(); // Nichts anzeigen, wenn das Bild da ist
                  },
                ),
              ),
              const SizedBox(height: 24.0),
              // Name
              const Text(
                'Marco Eggert',
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8.0),
              // Rolle
              Text(
                'Fotograf',
                style: TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 20.0,
                  color: Colors.grey[700],
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 24.0),
              // Über mich Text
              Text(
                aboutMeText,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontFamily: 'SF Pro',
                  fontSize: 18.0,
                  height: 1.6, // Zeilenhöhe für bessere Lesbarkeit
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1, // Aktueller Index für "Über mich"
        onTap: onNavigate, // Verwenden Sie den Callback für die Navigation
        selectedItemColor: Colors.deepOrange, // Ausgewähltes Element in Rot
        unselectedItemColor: Colors.grey, // Nicht ausgewähltes Element in Grau
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Bilder'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Über mich'),
        ],
      ),
    );
  }
}
