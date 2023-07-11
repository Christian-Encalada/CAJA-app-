import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tu App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Acción para el botón de inicio de sesión
                print('Iniciar sesión');
              },
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Acción para el botón de registro
                print('Registrarse');
              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
    );
  }
}
