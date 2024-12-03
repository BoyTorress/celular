class Constants {
  // General App Constants
  static const String appName = 'TOPY - Datos de Salud';

  // Roles
  static const String roleAdmin = 'admin';
  static const String roleUser = 'user';

  // Health Categories
  static const String categoryActivity = 'Actividad';
  static const String categorySleep = 'Sueño';
  static const String categoryNutrition = 'Nutrición';
  static const String categoryMindfulness = 'Atención Plena';

  // Notification Channel IDs
  static const String notificationChannelId = 'health_notifications';
  static const String notificationChannelName = 'Health Notifications';
  static const String notificationChannelDescription = 'Notificaciones importantes sobre la salud.';

  // Default Values
  static const int defaultActivityGoal = 5000; // Pasos
  static const int defaultSleepGoal = 8; // Horas
  static const int defaultCaloriesGoal = 2000; // Calorías

  // Date Formats
  static const String dateFormat = 'yyyy-MM-dd';

  // Error Messages
  static const String errorCompleteAllFields = 'Por favor, complete todos los campos.';
  static const String errorInvalidRole = 'Rol inválido seleccionado.';

  // App URLs
  static const String privacyPolicyUrl = 'https://www.example.com/privacy-policy';
  static const String termsOfServiceUrl = 'https://www.example.com/terms-of-service';
}
