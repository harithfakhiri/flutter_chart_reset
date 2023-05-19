import 'package:charts_app/utils/points.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class BarCharts extends StatelessWidget {
  final List<DotPoint> points;
  const BarCharts({required this.points, super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(BarChartData(
        minY: 0,
        maxY: 60,
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(
            show: true,
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                    showTitles: true, getTitlesWidget: getBottomTitles))),
        barGroups: points
            .map((point) => BarChartGroupData(x: point.x.toInt(), barRods: [
                  BarChartRodData(
                      toY: point.y.toDouble(),
                      width: 20,
                      borderRadius: BorderRadius.circular(4),
                      backDrawRodData: BackgroundBarChartRodData(
                        show: true,
                        toY: 60,
                        color: const Color.fromARGB(142, 158, 158, 158),
                      ))
                ]))
            .toList()));
  }
}

Widget getBottomTitles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Color.fromARGB(255, 57, 55, 55),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget month;
  switch (value.toInt()) {
    case 0:
      month = const Text('Jan', style: style);
      break;
    case 1:
      month = const Text('Feb', style: style);
      break;
    case 2:
      month = const Text('Mar', style: style);
      break;
    case 3:
      month = const Text('Apr', style: style);
      break;
    case 4:
      month = const Text('May', style: style);
      break;
    default:
      month = const Text('Jun', style: style);
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: month);
}
