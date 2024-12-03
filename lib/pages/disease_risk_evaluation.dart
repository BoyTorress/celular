import 'package:flutter/material.dart';

class DiseaseRiskEvaluationPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _habitsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Evaluación de Riesgo de Enfermedades'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _habitsController,
                decoration: InputDecoration(labelText: 'Describe tus hábitos alimenticios'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Este campo es obligatorio';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Aquí podrías realizar una evaluación del riesgo
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Evaluación de riesgo completada')),
                    );
                  }
                },
                child: Text('Evaluar Riesgo'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
