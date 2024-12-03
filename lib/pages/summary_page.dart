import 'package:flutter/material.dart';

class SummaryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resumen de Bienestar y Salud'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Resumen Diario',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              SummaryCard(
                title: 'Actividad Física',
                description: 'Has caminado 5.2 km hoy. ¡Sigue así para alcanzar tu objetivo de 10,000 pasos diarios!',
                icon: Icons.directions_walk,
                color: Colors.redAccent,
              ),
              SizedBox(height: 10),
              SummaryCard(
                title: 'Sueño',
                description: 'Has dormido 7 horas y 30 minutos. La cantidad recomendada para adultos es entre 7 y 9 horas.',
                icon: Icons.bed,
                color: Colors.blueAccent,
              ),
              SizedBox(height: 10),
              SummaryCard(
                title: 'Nutrición',
                description: 'Hoy has consumido 2,100 kcal. Asegúrate de mantener una dieta balanceada rica en nutrientes.',
                icon: Icons.fastfood,
                color: Colors.greenAccent,
              ),
              SizedBox(height: 10),
              SummaryCard(
                title: 'Atención Plena',
                description: 'Has realizado 20 minutos de meditación. Excelente para reducir el estrés y mejorar tu bienestar.',
                icon: Icons.self_improvement,
                color: Colors.purpleAccent,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SummaryCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const SummaryCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icon, size: 40, color: Colors.white),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
