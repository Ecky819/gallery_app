import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:gallery_app/widgets/image_screen.dart';
import 'package:gallery_app/widgets/about_screen.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Initialisiere Flutter Launcher Icons, falls benötigt
  FlutterNativeSplash.remove();
  runApp(MyApp());
}

Future initialization(BuildContext? context) async {
  // Hier können Sie Initialisierungen vornehmen, z.B. für Firebase oder andere Dienste
  await Future.delayed(Duration(seconds: 3)); // await Firebase.initializeApp();
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
