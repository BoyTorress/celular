import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class StatisticsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Estadísticas de Salud'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              'Actividad Diaria',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Expanded(
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceEvenly,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (double value, TitleMeta meta) {
                          const style = TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          );
                          String text;
                          switch (value.toInt()) {
                            case 0:
                              text = 'Lun';
                              break;
                            case 1:
                              text = 'Mar';
                              break;
                            case 2:
                              text = 'Mié';
                              break;
                            case 3:
                              text = 'Jue';
                              break;
                            case 4:
                              text = 'Vie';
                              break;
                            case 5:
                              text = 'Sáb';
                              break;
                            case 6:
                              text = 'Dom';
                              break;
                            default:
                              text = '';
                              break;
                          }
                          return SideTitleWidget(
                            axisSide: meta.axisSide,
                            space: 4.0,
                            child: Text(text, style: style),
                          );
                        },
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: _getBarGroups(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      BarChartGroupData(
        x: 0,
        barRods: [
          BarChartRodData(toY: 5, color: Colors.blueAccent, width: 16),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(toY: 6.5, color: Colors.blueAccent, width: 16),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(toY: 5, color: Colors.blueAccent, width: 16),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(toY: 7.5, color: Colors.blueAccent, width: 16),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(toY: 9, color: Colors.blueAccent, width: 16),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(toY: 11.5, color: Colors.blueAccent, width: 16),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(toY: 6.5, color: Colors.blueAccent, width: 16),
        ],
      ),
    ];
  }
}
