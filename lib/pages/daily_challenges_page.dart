import 'package:flutter/material.dart';

class DailyChallengesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Retos Diarios'),
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
                'Hoy, te retamos a cumplir los siguientes objetivos:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ChallengeCard(
                title: 'Camina 5,000 pasos',
                description: 'Mantén un buen nivel de actividad caminando al menos 5,000 pasos hoy.',
                icon: Icons.directions_walk,
                color: Colors.green,
              ),
              SizedBox(height: 10),
              ChallengeCard(
                title: 'Bebe 8 vasos de agua',
                description: 'Mantén tu cuerpo hidratado bebiendo al menos 8 vasos de agua durante el día.',
                icon: Icons.local_drink,
                color: Colors.blue,
              ),
              SizedBox(height: 10),
              ChallengeCard(
                title: 'Realiza 10 minutos de meditación',
                description: 'Reduce el estrés y mejora tu bienestar mental con 10 minutos de meditación.',
                icon: Icons.self_improvement,
                color: Colors.purple,
              ),
              SizedBox(height: 10),
              ChallengeCard(
                title: 'Consume 5 porciones de frutas y verduras',
                description: 'Aliméntate saludablemente con al menos 5 porciones de frutas y verduras hoy.',
                icon: Icons.fastfood,
                color: Colors.orange,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ChallengeCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;

  const ChallengeCard({
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, size: 40, color: Colors.white),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
