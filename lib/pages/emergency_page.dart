import 'package:flutter/material.dart';

class EmergencyPage extends StatelessWidget {
  final List<Map<String, String>> emergencyContacts = const [
    {'name': 'Juan Pérez', 'phone': '+56 9 1234 5678'},
    {'name': 'Ana Gómez', 'phone': '+56 9 8765 4321'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emergencia'),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Presiona el botón para solicitar ayuda',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                _showConfirmationDialog(context);
              },
              child: Text(
                'PEDIR AYUDA',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showConfirmationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Confirmar Emergencia'),
        content: Text('¿Estás seguro de que quieres solicitar ayuda? Se notificará a tus contactos de emergencia.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cerrar diálogo sin hacer nada
            },
            child: Text('Cancelar'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cerrar diálogo
              _sendEmergencyAlert(context);
            },
            child: Text('Confirmar'),
          ),
        ],
      ),
    );
  }

  void _sendEmergencyAlert(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Se ha enviado una alerta a tus contactos de emergencia'),
        backgroundColor: Colors.red,
      ),
    );

    for (var contact in emergencyContacts) {
      print('Se notifica a ${contact['name']} al número ${contact['phone']}');
    }
  }
}
