import 'package:flutter/material.dart';
import 'package:gallery_app/image_screen.dart';
import 'package:gallery_app/about_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0; // Aktueller Index für die BottomNavigationBar

  // Liste der Bildschirme
  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _screens = [
      ImageScreen(onNavigate: _onItemTapped), // ImageScreen
      AboutScreen(onNavigate: _onItemTapped), // AboutScreen
    ];
  }

  // Callback-Funktion für die BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Gallery',
      theme: ThemeData(
        primarySwatch: Colors.red, // Primärfarbe der App
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Inter', // Verwendung der Schriftart Inter
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red[700], // Hintergrundfarbe der AppBar
          foregroundColor: Colors.white, // Textfarbe der AppBar
          elevation: 4.0, // Schatten der AppBar
        ),
        cardTheme: CardThemeData(
          elevation: 4.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              12.0,
            ), // Abgerundete Ecken für Karten
          ),
        ),
      ),
      home:
          _screens[_selectedIndex], // Zeigt den aktuell ausgewählten Bildschirm an
      debugShowCheckedModeBanner: false, // Debug-Banner ausblenden
    );
  }
}
