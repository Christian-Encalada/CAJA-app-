import 'package:auto_route/auto_route.dart';
import 'package:caja_flutter/routes/app_routes.gr.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  Future<void> onNavigation(
      NavigationResolver resolver, StackRouter router) async {
    // Aquí puedes agregar tu propia lógica de autenticación
    // en lugar de utilizar AuthService
    // Por ejemplo, podrías tener una variable booleana "isAuthenticated"
    // que indique si el usuario está autenticado o no.

    bool isAuthenticated = true; // Cambia esto según tu lógica de autenticación

    if (isAuthenticated) {
      // Continuar con la navegación
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}
