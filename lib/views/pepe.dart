import 'package:flutter/material.dart';

class Pepe extends StatelessWidget {
  const Pepe({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          '¡Hola Mundo!',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
