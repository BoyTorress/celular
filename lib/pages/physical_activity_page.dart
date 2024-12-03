import 'package:flutter/material.dart';

class PhysicalActivityPage extends StatefulWidget {
  @override
  _PhysicalActivityPageState createState() => _PhysicalActivityPageState();
}

class _PhysicalActivityPageState extends State<PhysicalActivityPage> {
  final TextEditingController _activityController = TextEditingController();

  void _saveActivity() {
    // Guardar actividad ingresada en la base de datos
    String activity = _activityController.text;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Actividad física guardada: $activity')),
    );

    _activityController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seguimiento de Actividad Física'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _activityController,
              decoration: InputDecoration(labelText: 'Actividad Física (e.g., minutos caminando)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveActivity,
              child: Text('Guardar Actividad'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
