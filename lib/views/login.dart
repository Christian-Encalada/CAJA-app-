import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../routes/app_routes.gr.dart';

@RoutePage()
class LoginRoute extends StatelessWidget {
  const LoginRoute({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key});

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<bool> login(String username, String password) async {
    const url = 'http://127.0.0.1:8000/accounts/login/'; // Cambiar a la URL correcta de inicio de sesión en Django
    final response = await http.post(
      Uri.parse(url),
      body: {
        'username': username,
        'password': password,
      },
    );

    if (response.statusCode == 200) {
      // Inicio de sesión exitoso
      return true;
    } else {
      // Inicio de sesión fallido
      return false;
    }
  }

  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final username = _usernameController.text;
      final password = _passwordController.text;

      try {
        final response = await http.post(
          Uri.parse('http://127.0.0.1:8000/accounts/login/'),
          body: {
            'username': username,
            'password': password,
          },
        );

        if (response.statusCode == 200) {
          // Inicio de sesión exitoso
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Inicio de sesión exitoso')),
          );

          // Aquí podrías guardar el token de autenticación o realizar alguna acción adicional después del inicio de sesión exitoso.
        } else {
          // Inicio de sesión fallido
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Error: Usuario no registrado o credenciales incorrectas')),
          );
        }
      } catch (e) {
        print('Error en la solicitud HTTP: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error en la solicitud HTTP: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Escriba su usuario',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor escriba su usuario.';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextFormField(
              controller: _passwordController,
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Escriba su contraseña',
              ),
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor escriba su contraseña.';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: _submitForm,
                    child: const Text('LOGIN'),
                  ),
                  const SizedBox(height: 20),
                  // Aquí puedes agregar tus imágenes de Google y Facebook si lo deseas.
                  // Asegúrate de agregar las imágenes en la carpeta "assets" de tu proyecto y actualizar la ruta aquí.
                  Image.asset(
                     'assets/gogle.png',
                    width: 100,
                  height: 100,
                   ),
                   Image.asset(
                    'assets/face.png',
                    width: 100,
                    height: 100,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
