class User {
  String name;
  String email;
  String role;
  double? bloodPressure; // Agregar presión arterial
  int? heartRate; // Agregar ritmo cardíaco
  double? bodyTemperature; // Agregar temperatura corporal

  User({
    required this.name,
    required this.email,
    required this.role,
    this.bloodPressure,
    this.heartRate,
    this.bodyTemperature,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'role': role,
      'bloodPressure': bloodPressure,
      'heartRate': heartRate,
      'bodyTemperature': bodyTemperature,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'],
      email: map['email'],
      role: map['role'],
      bloodPressure: map['bloodPressure'],
      heartRate: map['heartRate'],
      bodyTemperature: map['bodyTemperature'],
    );
  }
}
