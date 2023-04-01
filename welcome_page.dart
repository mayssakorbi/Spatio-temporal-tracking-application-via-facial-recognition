import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'social_page.dart';

class WelcomePageLoadingScreen extends StatefulWidget {
  @override
  _WelcomePageLoadingScreenState createState() =>
      _WelcomePageLoadingScreenState();
}

class _WelcomePageLoadingScreenState extends State<WelcomePageLoadingScreen> {
  Color _loadingColor = Colors.black;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 30), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  // Définir une liste de couleurs
  List<Color> _loadingColors = [    Colors.blue,    Colors.red,    Colors.green,    Colors.yellow,  ];

  // Définir une variable pour stocker l'index de la couleur en cours
  int _colorIndex = 0;

  // Définir une fonction pour modifier la couleur de remplissage
  void _changeLoadingColor() {
    setState(() {
      _colorIndex = (_colorIndex + 1) % _loadingColors.length;
      _loadingColor = _loadingColors[_colorIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40.0),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(_loadingColor),
            ),
          ],
        ),
      ),
    );
  }
}
