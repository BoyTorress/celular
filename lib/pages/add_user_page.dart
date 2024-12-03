import 'package:flutter/material.dart';

class AddUserPage extends StatefulWidget {
  final Function(String email, String role) onAddUser;

  AddUserPage({required this.onAddUser});

  @override
  _AddUserPageState createState() => _AddUserPageState();
}

class _AddUserPageState extends State<AddUserPage> {
  final _emailController = TextEditingController();
  String? _role;  // Variable para almacenar el rol del usuario

  void _addUser() {
    if (_emailController.text.isNotEmpty && _role != null) {
      // Llamar al callback para agregar el usuario
      widget.onAddUser(_emailController.text, _role!);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Usuario ${_emailController.text} agregado con rol $_role')),
      );
      Navigator.pop(context); // Volver a la pantalla anterior
    } else {
      // Mostrar mensaje de error si los campos están vacíos
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Por favor, complete todos los campos.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar Usuario'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Correo Electrónico'),
            ),
            DropdownButton<String>(
              value: _role,
              hint: Text('Seleccione un rol'),
              items: <String>['admin', 'user'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  _role = value;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _addUser,
              child: Text('Agregar Usuario'),
            ),
          ],
        ),
      ),
    );
  }
}
