import 'package:flutter/material.dart';
import 'package:hdt_flutter/widgets/app_bar.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class PerfilView extends StatelessWidget {
  const PerfilView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      child: Center(
        child: Text(
          'Hola uwu',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 114, 41, 156),
          ),
        ),
      ),
    );
  }
}
