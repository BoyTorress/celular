class MedicalHistory {
  String condition;
  String medications;
  String allergies;
  String doctor;
  DateTime lastVisit;

  MedicalHistory({
    required this.condition,
    required this.medications,
    required this.allergies,
    required this.doctor,
    required this.lastVisit,
  });

  Map<String, dynamic> toMap() {
    return {
      'condition': condition,
      'medications': medications,
      'allergies': allergies,
      'doctor': doctor,
      'lastVisit': lastVisit.toIso8601String(),
    };
  }

  factory MedicalHistory.fromMap(Map<String, dynamic> map) {
    return MedicalHistory(
      condition: map['condition'],
      medications: map['medications'],
      allergies: map['allergies'],
      doctor: map['doctor'],
      lastVisit: DateTime.parse(map['lastVisit']),
    );
  }
}
