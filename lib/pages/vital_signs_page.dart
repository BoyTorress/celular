import 'package:flutter/material.dart';

class VitalSignsPage extends StatefulWidget {
  @override
  _VitalSignsPageState createState() => _VitalSignsPageState();
}

class _VitalSignsPageState extends State<VitalSignsPage> {
  final _bloodPressureController = TextEditingController();
  final _heartRateController = TextEditingController();
  final _bodyTemperatureController = TextEditingController();

  void _saveVitalSigns() {
    // Aquí puedes guardar los valores ingresados en la base de datos
    String bloodPressure = _bloodPressureController.text;
    String heartRate = _heartRateController.text;
    String bodyTemperature = _bodyTemperatureController.text;

    // Mostrar mensaje de confirmación
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Signos vitales guardados correctamente')),
    );

    // Limpiar los campos después de guardar
    _bloodPressureController.clear();
    _heartRateController.clear();
    _bodyTemperatureController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Monitoreo de Signos Vitales'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _bloodPressureController,
              decoration: InputDecoration(labelText: 'Presión Arterial (mmHg)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _heartRateController,
              decoration: InputDecoration(labelText: 'Ritmo Cardíaco (BPM)'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _bodyTemperatureController,
              decoration: InputDecoration(labelText: 'Temperatura Corporal (°C)'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _saveVitalSigns,
              child: Text('Guardar Signos Vitales'),
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
