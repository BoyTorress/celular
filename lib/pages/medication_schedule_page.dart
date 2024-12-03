import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MedicationSchedulePage extends StatefulWidget {
  @override
  _MedicationSchedulePageState createState() => _MedicationSchedulePageState();
}

class _MedicationSchedulePageState extends State<MedicationSchedulePage> {
  final List<Medication> _medications = [
    Medication(name: 'Lisinopril', time: TimeOfDay(hour: 8, minute: 0)),
    Medication(name: 'Albuterol', time: TimeOfDay(hour: 14, minute: 0)),
    Medication(name: 'Metformina', time: TimeOfDay(hour: 20, minute: 0)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Programación de Medicamentos'),
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
                'Recordatorio de Medicamentos',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: _medications.length,
                  itemBuilder: (context, index) {
                    final medication = _medications[index];
                    return MedicationCard(medication: medication);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final Medication? newMedication = await _addMedicationDialog(context);
          if (newMedication != null) {
            setState(() {
              _medications.add(newMedication);
            });
          }
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }

  Future<Medication?> _addMedicationDialog(BuildContext context) async {
    final TextEditingController nameController = TextEditingController();
    TimeOfDay? selectedTime;

    return showDialog<Medication>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Agregar Medicamento'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Nombre del Medicamento'),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  final TimeOfDay? picked = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (picked != null) {
                    setState(() {
                      selectedTime = picked;
                    });
                  }
                },
                child: Text(selectedTime == null
                    ? 'Seleccionar Hora'
                    : 'Hora: ${selectedTime!.format(context)}'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (nameController.text.isNotEmpty && selectedTime != null) {
                  Navigator.of(context).pop(
                    Medication(name: nameController.text, time: selectedTime!),
                  );
                }
              },
              child: Text('Agregar'),
            ),
          ],
        );
      },
    );
  }
}

class Medication {
  final String name;
  final TimeOfDay time;

  Medication({required this.name, required this.time});
}

class MedicationCard extends StatelessWidget {
  final Medication medication;

  const MedicationCard({Key? key, required this.medication}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white70,
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  medication.name,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Hora: ${medication.time.format(context)}',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.alarm,
                  color: Colors.blueAccent,
                ),
                IconButton(
                  icon: Icon(Icons.check_circle, color: Colors.green),
                  onPressed: () {
                    // Aquí podrías guardar el estado del medicamento como tomado
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('${medication.name} tomado')),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
