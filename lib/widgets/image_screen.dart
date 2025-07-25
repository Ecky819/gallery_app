import 'package:flutter/material.dart';
import 'package:gallery_app/models/data.dart'; // Importieren Sie Ihre Daten
import 'package:gallery_app/widgets/detail_screen.dart';

class ImageScreen extends StatelessWidget {
  final ValueChanged<int> onNavigate; // Callback, um die Navigation zu steuern

  const ImageScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MyGallery'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange, // Passende Farbe
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Zwei Spalten
          crossAxisSpacing: 16.0, // Abstand zwischen den Spalten
          mainAxisSpacing: 16.0, // Abstand zwischen den Reihen
          childAspectRatio: 0.8, // Seitenverhältnis der Kacheln
        ),
        itemCount: galleryItems.length,
        itemBuilder: (context, index) {
          final item = galleryItems[index];
          return GestureDetector(
            onTap: () {
              // Navigieren zum Detail-Bildschirm
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(item: item),
                ),
              );
            },
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0), // Abgerundete Ecken
              ),
              clipBehavior: Clip.antiAlias, // Für abgerundete Bilder
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Image.asset(
                      item.imagePath,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(
                          child: Icon(
                            Icons.broken_image,
                            size: 50,
                            color: Colors.grey[400],
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      item.title,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Aktueller Index für "Bilder"
        onTap: onNavigate, // Verwenden Sie den Callback für die Navigation
        selectedItemColor:
            Colors.deepOrangeAccent, // Ausgewähltes Element in Rot
        unselectedItemColor: Colors.grey, // Nicht ausgewähltes Element in Grau
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.image), label: 'Bilder'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Über mich'),
        ],
      ),
    );
  }
}
