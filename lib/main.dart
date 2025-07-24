import 'package:flutter/material.dart';
import 'package:app_gallery/image_screen.dart';
import 'package:app_gallery/about_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  class _MyAppState extends State<MyApp {
    int _selectedIndex = 0;

    late final List<Widget> _screens;

    @override
    void initState() {
      super.initState();
      _screens = [
        ImageScreen(onNavigate: _onItemTapped),
        AboutScreen(onNavigate: _onItemTapped),
      ];
    }
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