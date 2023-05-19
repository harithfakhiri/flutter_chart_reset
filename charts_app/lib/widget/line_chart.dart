import 'package:charts_app/utils/points.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class LineCharts extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color.fromARGB(95, 2, 211, 155),
  ];
  final List<DotPoint> points;

  LineCharts({required this.points, super.key});
  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minY: 0,
          maxY: 20,
          backgroundColor: const Color.fromARGB(255, 46, 31, 102),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color.fromARGB(103, 55, 67, 77),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: Color.fromARGB(49, 55, 67, 77),
                strokeWidth: 1,
              );
            },
          ),
          titlesData: FlTitlesData(
              show: true,
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                      showTitles: true, getTitlesWidget: getBottomTitles)),
              leftTitles: AxisTitles(
                  sideTitles: SideTitles(
                      reservedSize: 30,
                      showTitles: true,
                      getTitlesWidget: getLeftTitles))),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff37434d), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              dotData: FlDotData(show: false),
              spots: points.map((point) => FlSpot(point.x, point.y)).toList(),
              isCurved: true,
              color: gradientColors[0],
              barWidth: 3,
              // dotData: FlDotData(show: false),
              belowBarData: BarAreaData(show: true, color: gradientColors[1]),
            ),
          ],
        ),
      );

  Widget getLeftTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Color.fromARGB(255, 57, 55, 55),
      fontWeight: FontWeight.w400,
      fontSize: 14,
    );

    String categories;
    switch (value.toInt()) {
      case 5:
        categories = 'low';
        break;
      case 10:
        categories = 'mid';
        break;
      case 15:
        categories = 'high';
        break;
      default:
        categories = '';
        break;
    }
    return Text(categories, style: style, textAlign: TextAlign.left);
    ;
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
    case 1:
      month = const Text('Mar', style: style);
      break;
    case 3:
      month = const Text('Jun', style: style);
      break;
    case 5:
      month = const Text('Sept', style: style);
      break;
    case 7:
      month = const Text('Dec', style: style);
      break;
    default:
      month = const Text('', style: style);
      break;
  }
  return SideTitleWidget(axisSide: meta.axisSide, child: month);
}
