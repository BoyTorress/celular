import 'package:flutter/material.dart';
import 'add_user_page.dart'; // Importar la pantalla para agregar usuarios
import 'home_page.dart'; // Importar HomePage para navegar de regreso

class AdminDashboard extends StatefulWidget {
  @override
  _AdminDashboardState createState() => _AdminDashboardState();
}

class _AdminDashboardState extends State<AdminDashboard> {
  List<Map<String, String>> _users = [
    {'email': 'user1@example.com', 'role': 'admin'},
    {'email': 'user2@example.com', 'role': 'user'},
  ]; // Lista de usuarios de prueba.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Panel de Administración'),
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _users.length,
        itemBuilder: (context, index) {
          var user = _users[index];
          return ListTile(
            title: Text(user['email']!),
            subtitle: Text('Rol: ${user['role']}'),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(Icons.edit, color: Colors.blue),
                  onPressed: () {
                    // Aquí podrías implementar lógica para editar usuarios
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Función de editar usuario no implementada')),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.delete, color: Colors.red),
                  onPressed: () {
                    setState(() {
                      _users.removeAt(index);
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Usuario eliminado')),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddUserPage(
                onAddUser: (email, role) {
                  setState(() {
                    _users.add({'email': email, 'role': role});
                  });
                },
              ),
            ),
          );
        },
        child: Icon(Icons.add),
        tooltip: 'Agregar Usuario',
      ),
    );
  }
}
