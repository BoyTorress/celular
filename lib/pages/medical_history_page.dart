import 'package:flutter/material.dart';

class MedicalHistoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Historial Médico'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.lightBlueAccent, Colors.blueGrey],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Historial Médico del Usuario',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              MedicalHistoryCard(
                title: 'Alergias',
                details: 'Polen, Maní, Penicilina',
              ),
              SizedBox(height: 10),
              MedicalHistoryCard(
                title: 'Condiciones Médicas',
                details: 'Hipertensión, Asma',
              ),
              SizedBox(height: 10),
              MedicalHistoryCard(
                title: 'Medicamentos Actuales',
                details: 'Lisinopril, Albuterol',
              ),
              SizedBox(height: 10),
              MedicalHistoryCard(
                title: 'Cirugías Previas',
                details: 'Apendicectomía (2015)',
              ),
              SizedBox(height: 10),
              MedicalHistoryCard(
                title: 'Contacto de Emergencia',
                details: 'María Pérez - 987654321',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MedicalHistoryCard extends StatelessWidget {
  final String title;
  final String details;

  const MedicalHistoryCard({
    Key? key,
    required this.title,
    required this.details,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 8),
            Text(
              details,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
