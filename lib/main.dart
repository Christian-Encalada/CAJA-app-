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
        primarySwatch: Colors.grey,
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
        title: Text('Hermanas Tierra'),
        leading: Padding(
          padding: EdgeInsets.only(left: 16.0),
          child: Image.asset(
            'assets/IDENTIDAD - simbolo transparente_Mesa de trabajo 1.png',
            width: 40,
            height: 40,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {
                // Acción para el botón de inicio de sesión
                print('Iniciar sesión');
              },
              icon: Icon(Icons.login, color: Colors.purple),
              label: Text(
                'Iniciar sesión',
                style: TextStyle(fontSize: 18),
              ),
              style: TextButton.styleFrom(
                primary: Colors.purple,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                side: BorderSide(color: Colors.purple),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 16),
            TextButton.icon(
              onPressed: () {
                // Acción para el botón de registro
                print('Registrarse');
              },
              icon: Icon(Icons.person_add, color: Colors.black),
              label: Text(
                'Registrarse',
                style: TextStyle(fontSize: 18),
              ),
              style: TextButton.styleFrom(
                primary: Colors.black,
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                side: BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
