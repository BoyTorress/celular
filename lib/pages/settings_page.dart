import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool _notificationsEnabled = true;
  double _textSize = 16.0;
  bool _highContrast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
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
                'Opciones de Configuración',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              SwitchListTile(
                title: Text(
                  'Notificaciones',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                value: _notificationsEnabled,
                onChanged: (bool value) {
                  setState(() {
                    _notificationsEnabled = value;
                  });
                },
              ),
              SizedBox(height: 20),
              Text(
                'Tamaño del Texto',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              Slider(
                value: _textSize,
                min: 12.0,
                max: 24.0,
                divisions: 6,
                label: '${_textSize.round()} pt',
                onChanged: (double value) {
                  setState(() {
                    _textSize = value;
                  });
                },
              ),
              SizedBox(height: 20),
              SwitchListTile(
                title: Text(
                  'Alto Contraste',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                value: _highContrast,
                onChanged: (bool value) {
                  setState(() {
                    _highContrast = value;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
