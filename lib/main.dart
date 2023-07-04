import 'package:flutter/material.dart';
import 'views/login.dart';
import 'views/register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Proyecto Flutter',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a CAJA'),
        backgroundColor: Colors.white, // Fondo blanco para el AppBar
        foregroundColor: Colors.black, // Texto negro para el AppBar
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido a CAJA',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/login');
              },
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              child: Text('Registrarse'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black), // Icono en color negro
            label: 'Inicio',
          ),
          BottomNavigationBarItem(
            icon:
                Icon(Icons.search, color: Colors.black), // Icono en color negro
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart,
                color: Colors.black), // Icono en color negro
            label: 'Carrito',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite,
                color: Colors.black), // Icono en color negro
            label: 'Favoritos',
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iniciar sesión'),
        backgroundColor: Colors.white, // Fondo blanco para el AppBar
        foregroundColor: Colors.black, // Texto negro para el AppBar
      ),
      body: Center(
        child: Text('Página de inicio de sesión'),
      ),
    );
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registrarse'),
        backgroundColor: Colors.white, // Fondo blanco para el AppBar
        foregroundColor: Colors.black, // Texto negro para el AppBar
      ),
      body: Center(
        child: Text('Página de registro'),
      ),
    );
  }
}
