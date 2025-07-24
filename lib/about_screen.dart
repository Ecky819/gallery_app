import 'package:flutter/material.dart';
import 'package:gallery_app/data.dart';

class AboutScreen extends Stateless Widget {
  final ValueChaged<int> onNavigate;

  const AboutScreen ({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Gallery'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange, 
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage('assets/images/kaya.jpeg'),
                  onBackgroundImageError: (exception, stackTrace) {
                    debugPrint('Error loading image: $exception');
                  },
                  cild: Builder
            )
          ),
            )        );
}
}