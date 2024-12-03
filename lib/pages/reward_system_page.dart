import 'package:flutter/material.dart';

class RewardSystemPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sistema de Recompensas'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Gana recompensas por tus logros en salud',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            RewardCard(
              title: 'Camina 5,000 pasos',
              points: 50,
              color: Colors.green,
            ),
            SizedBox(height: 10),
            RewardCard(
              title: 'Duerme 8 horas',
              points: 30,
              color: Colors.blue,
            ),
            SizedBox(height: 10),
            RewardCard(
              title: 'Come 5 porciones de frutas y verduras',
              points: 20,
              color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}

class RewardCard extends StatelessWidget {
  final String title;
  final int points;
  final Color color;

  const RewardCard({
    required this.title,
    required this.points,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: Text(
          '$points puntos',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
