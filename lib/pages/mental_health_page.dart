import 'package:flutter/material.dart';

class MentalHealthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Salud Mental'),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Registro de Estado de Ánimo',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Indica cómo te sientes hoy:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.sentiment_very_dissatisfied, size: 40, color: Colors.red),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registrado: Muy Mal')),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.sentiment_dissatisfied, size: 40, color: Colors.orange),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registrado: Mal')),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.sentiment_neutral, size: 40, color: Colors.yellow),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registrado: Regular')),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.sentiment_satisfied, size: 40, color: Colors.lightGreen),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registrado: Bien')),
                    );
                  },
                ),
                IconButton(
                  icon: Icon(Icons.sentiment_very_satisfied, size: 40, color: Colors.green),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Registrado: Muy Bien')),
                    );
                  },
                ),
              ],
            ),
            SizedBox(height: 40),
            Text(
              'Ejercicios de Relajación',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.self_improvement, color: Colors.purpleAccent, size: 30),
              title: Text('Ejercicio de Respiración - 5 minutos'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Iniciando ejercicio de respiración...')),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.nights_stay, color: Colors.purpleAccent, size: 30),
              title: Text('Meditación Guiada - 10 minutos'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Iniciando meditación guiada...')),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.music_note, color: Colors.purpleAccent, size: 30),
              title: Text('Escuchar Música Relajante'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Reproduciendo música relajante...')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
