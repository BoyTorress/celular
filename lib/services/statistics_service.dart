import 'package:flutter/material.dart';

class StatisticsService {
  static List<DailyActivity> generateDailyActivityData(Map<String, int> activityData) {
    final List<DailyActivity> data = activityData.entries
        .map((entry) => DailyActivity(entry.key, entry.value))
        .toList();

    return data;
  }
}

class DailyActivity {
  final String activity;
  final int value;

  DailyActivity(this.activity, this.value);
}
