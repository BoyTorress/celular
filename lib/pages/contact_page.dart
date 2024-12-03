import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  final List<Map<String, String>> emergencyContacts = [
    {'name': 'Juan Pérez', 'relationship': 'Hijo', 'phone': '+56 9 1234 5678'},
    {'name': 'Ana Gómez', 'relationship': 'Esposa', 'phone': '+56 9 8765 4321'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contactos de Emergencia'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: emergencyContacts.length,
        itemBuilder: (context, index) {
          final contact = emergencyContacts[index];
          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              title: Text(contact['name'] ?? '', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text('Relación: ${contact['relationship']}\nTeléfono: ${contact['phone']}'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.call, color: Colors.green),
                    onPressed: () {
                      _makePhoneCall(contact['phone'] ?? '');
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.message, color: Colors.blue),
                    onPressed: () {
                      _sendMessage(contact['phone'] ?? '');
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Aquí podrías agregar la lógica para agregar un nuevo contacto
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
    );
  }

  void _makePhoneCall(String phoneNumber) {
    // Implementa la lógica para realizar la llamada
    // Utiliza el paquete 'url_launcher' para abrir el marcador telefónico
    print('Llamar a $phoneNumber');
  }

  void _sendMessage(String phoneNumber) {
    // Implementa la lógica para enviar un mensaje
    print('Enviar mensaje a $phoneNumber');
  }
}
