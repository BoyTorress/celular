import 'package:flutter/material.dart';
import 'daily_challenges_page.dart';
import 'statistics_page.dart';
import 'medical_history_page.dart';
import 'medication_schedule_page.dart';
import 'messaging_page.dart';
import 'settings_page.dart';
import 'vital_signs_page.dart';
import 'disease_risk_evaluation.dart';
import 'physical_activity_page.dart';
import 'nutrition_page.dart';
import 'mental_health_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TOPY - Bienestar y Salud'),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menú de Navegación',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Signos Vitales'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VitalSignsPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety),
              title: Text('Evaluación de Riesgo'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DiseaseRiskEvaluationPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.directions_run),
              title: Text('Retos Diarios'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DailyChallengesPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.bar_chart),
              title: Text('Estadísticas de Actividades'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatisticsPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.history),
              title: Text('Historial Médico'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicalHistoryPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.medical_services),
              title: Text('Programación de Medicamentos'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicationSchedulePage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Mensajería'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MessagingPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.self_improvement),
              title: Text('Salud Mental'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MentalHealthPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.fastfood),
              title: Text('Nutrición'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NutritionPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Configuración'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.arrow_back),
              title: Text('Volver a la Pantalla de Bienvenida'),
              onTap: () {
                Navigator.popUntil(context, (route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.purple, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Categorías de Salud',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  CategoryCard(
                    color: Colors.redAccent,
                    icon: Icons.favorite,
                    title: 'Signos Vitales',
                    data: 'Presión: 120/80 mmHg',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => VitalSignsPage()),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  CategoryCard(
                    color: Colors.orangeAccent,
                    icon: Icons.health_and_safety,
                    title: 'Evaluación de Riesgo',
                    data: 'Diabetes: Bajo',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => DiseaseRiskEvaluationPage()),
                      );
                    },
                  ),
                  CategoryCard(
                    color: Colors.blueAccent,
                    icon: Icons.directions_run,
                    title: 'Actividad Física',
                    data: '2.3 km hoy',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => PhysicalActivityPage()),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  CategoryCard(
                    color: Colors.greenAccent,
                    icon: Icons.fastfood,
                    title: 'Nutrición',
                    data: '2,300 kcal',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NutritionPage()),
                      );
                    },
                  ),
                  SizedBox(height: 10),
                  CategoryCard(
                    color: Colors.purpleAccent,
                    icon: Icons.self_improvement,
                    title: 'Atención Plena',
                    data: '15 min',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MentalHealthPage()),
                      );
                    },
                  ),
                  SizedBox(height: 30),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String data;
  final VoidCallback onTap;

  const CategoryCard({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.data,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40, color: Colors.white),
              SizedBox(height: 10),
              Text(title, style: TextStyle(color: Colors.white, fontSize: 18)),
              Text(data, style: TextStyle(color: Colors.white, fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
