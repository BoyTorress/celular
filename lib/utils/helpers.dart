import 'package:intl/intl.dart';

class Helpers {
  // Format Date
  static String formatDate(DateTime date) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    return formatter.format(date);
  }

  // Validate Email
  static bool isValidEmail(String email) {
    final RegExp emailRegex = RegExp(r'^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}\$');
    return emailRegex.hasMatch(email);
  }

  // Validate Password (at least 6 characters)
  static bool isValidPassword(String password) {
    return password.length >= 6;
  }

  // Parse String to DateTime
  static DateTime? parseDate(String dateString) {
    try {
      return DateFormat('yyyy-MM-dd').parse(dateString);
    } catch (e) {
      return null;
    }
  }

  // Calculate Percentage
  static double calculatePercentage(int value, int total) {
    if (total == 0) {
      return 0.0;
    }
    return (value / total) * 100;
  }
}
