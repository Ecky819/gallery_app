import 'package:flutter/material.dart';
import 'package:gallery_app/models/data.dart';

class DetailScreen extends StatelessWidget {
  final GalleryItem item;

  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange, // Passende Farbe
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              // Für eine sanfte Animation beim Übergang
              tag: item.imagePath, // Eindeutiger Tag für die Hero-Animation
              child: Image.asset(
                item.imagePath,
                width: double.infinity,
                height: 300, // Feste Höhe für das Bild
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 300,
                    color: Colors.grey[200],
                    child: Center(
                      child: Icon(
                        Icons.broken_image,
                        size: 80,
                        color: Colors.grey[400],
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: const TextStyle(
                      fontFamily: 'SF Pro',
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  if (item.date !=
                      null) // Zeigt das Datum nur an, wenn es vorhanden ist
                    Text(
                      item.date!,
                      style: TextStyle(fontSize: 16.0, color: Colors.grey[600]),
                    ),
                  const SizedBox(height: 16.0),
                  Text(
                    item.description,
                    style: const TextStyle(
                      fontSize: 18.0,
                      height: 1.5, // Zeilenhöhe für bessere Lesbarkeit
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
