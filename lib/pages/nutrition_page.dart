import 'package:flutter/material.dart';

class NutritionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nutrición'),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Registro de Nutrición Diaria',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Ingesta de Calorías:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Calorías consumidas (kcal)',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Registro de calorías guardado con éxito')),
                );
              },
              child: Text('Guardar Registro'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'Recomendaciones Nutricionales',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.food_bank, color: Colors.greenAccent, size: 30),
              title: Text('Consumir 5 porciones de frutas y verduras al día'),
            ),
            ListTile(
              leading: Icon(Icons.local_drink, color: Colors.greenAccent, size: 30),
              title: Text('Beber al menos 8 vasos de agua al día'),
            ),
            ListTile(
              leading: Icon(Icons.fitness_center, color: Colors.greenAccent, size: 30),
              title: Text('Limitar el consumo de azúcares y grasas saturadas'),
            ),
            ListTile(
              leading: Icon(Icons.timer, color: Colors.greenAccent, size: 30),
              title: Text('Realizar comidas en horarios regulares'),
            ),
          ],
        ),
      ),
    );
  }
}