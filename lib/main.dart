import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/summary_page.dart';
import 'pages/contact_page.dart';
import 'pages/emergency_page.dart';
import 'pages/admin_dashboard.dart';
import 'pages/add_user_page.dart';
import 'pages/daily_challenges_page.dart';
import 'pages/medical_history_page.dart';
import 'pages/medication_schedule_page.dart';
import 'pages/messaging_page.dart';
import 'pages/reward_system_page.dart';
import 'pages/settings_page.dart';
import 'pages/statistics_page.dart';
import 'theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TOPY - Datos de Salud',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido a TOPY'),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE0F7FA), // Cyan Claro - Fresco y Calmante
              Color(0xFFB3E5FC)  // Azul Suave - Relajante y Llamativo
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(
                child: Image.asset(
                  'assets/images/file.png',
                  width: 150,
                  height: 350,
                ),
              ),
              SizedBox(height: 20),
              Text(
                '¡Bienvenido a TOPY!',
                style: TextStyle(
                  fontSize: 28, // Ajuste del tamaño de fuente para mayor visibilidad
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00796B), // Verde Esmeralda, transmite bienestar
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Tu aplicación de bienestar y salud personal.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black87, // Negro suave para un mejor contraste
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF64B5F6), // Azul Claro para el botón, atractivo y amigable
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                  elevation: 5, // Añadido para dar un aspecto de botón prominente
                ),
                child: Text(
                  'Ingresar',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white, // Texto blanco para buen contraste con el botón azul
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              SizedBox(height: 30),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite, color: Color(0xFF00796B)), // Verde Esmeralda
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SummaryPage()),
                          );
                        },
                      ),
                      Text('Resumen', style: TextStyle(color: Color(0xFF00796B))), // Verde Esmeralda
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.phone, color: Color(0xFF64B5F6)), // Azul Claro
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ContactPage()),
                          );
                        },
                      ),
                      Text('Contacto', style: TextStyle(color: Color(0xFF64B5F6))), // Azul Claro
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.local_hospital, color: Color(0xFFD32F2F)), // Rojo Suave
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => EmergencyPage()),
                          );
                        },
                      ),
                      Text('Emergencia', style: TextStyle(color: Color(0xFFD32F2F))), // Rojo Suave
                    ],
                  ),
                ],
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AdminDashboard()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
                ),
                child: Text('Panel de Administración', style: TextStyle(color: Colors.white)),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

