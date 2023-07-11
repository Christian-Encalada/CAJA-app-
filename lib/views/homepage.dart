import 'package:caja_flutter/routes/app_routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón de inicio de sesión
                // Por ejemplo, puedes navegar a otra página usando AutoRoute:
                context.router.push(const LoginRoute());
              },
              child: Text('Iniciar sesión'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Acción al presionar el botón de registro
                // Por ejemplo, puedes navegar a otra página usando AutoRoute:
                context.router.push(const RegisterRoute());
              },
              child: Text('Registro'),
            ),
          ],
        ),
      ),
    );
  }
}
