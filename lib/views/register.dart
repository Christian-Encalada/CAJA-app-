import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()

class RegisterRoute extends StatelessWidget {
  const RegisterRoute({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulario'),
        ),
        body: const MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key});

  @override
  MyCustomFormState createState() => MyCustomFormState();
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _idController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _idController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // Form is valid, proceed with form submission
      // Here, you can handle form submission logic (e.g., saving data)
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          title: const Text('Form Submitted'),
          content: const Text('The form has been submitted successfully.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(labelText: 'Nombre'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor, ingresa tu nombre.';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _lastNameController,
            decoration: const InputDecoration(labelText: 'Apellido'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor, ingresa tu apellido.';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _emailController,
            decoration: const InputDecoration(labelText: 'Email'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor, ingresa tu correo electrónico.';
              }
              if (!value.contains('@')) {
                return 'Ingresa un correo electrónico válido.';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _phoneController,
            decoration: const InputDecoration(labelText: 'Teléfono'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor, ingresa tu número de teléfono.';
              }
              return null;
            },
          ),
          TextFormField(
            controller: _idController,
            decoration: const InputDecoration(labelText: 'Cédula'),
            validator: (value) {
              if (value!.isEmpty) {
                return 'Por favor, ingresa tu número de cédula.';
              }
              return null;
            },
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: _submitForm,
            child: const Text('Enviar'),
          ),
        ],
      ),
    );
  }
}
