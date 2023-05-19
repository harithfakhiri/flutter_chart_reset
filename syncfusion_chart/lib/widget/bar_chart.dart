import 'package:syncfusion_chart/utils/points.dart';
import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

class BarCharts extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xff23b6e6),
    const Color.fromARGB(95, 2, 211, 155),
  ];
  final List<DotPoint2> points;

  BarCharts({required this.points, super.key});
  @override
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'annual selling'),
      legend: Legend(isVisible: true, position: LegendPosition.bottom),
      series: <ChartSeries>[
        StackedColumnSeries<DotPoint2, int>(
            name: 'INTEL I5',
            dataSource: points,
            xValueMapper: (DotPoint2 point, _) => point.x.toInt(),
            yValueMapper: (DotPoint2 point, _) => point.y,
            dataLabelSettings: const DataLabelSettings(
                isVisible: true, textStyle: TextStyle(fontSize: 10))),
        StackedColumnSeries<DotPoint2, int>(
            name: 'INTEL I7',
            dataSource: points,
            xValueMapper: (DotPoint2 point, _) => point.x.toInt(),
            yValueMapper: (DotPoint2 point, _) => point.y1,
            dataLabelSettings: const DataLabelSettings(
                isVisible: true, textStyle: TextStyle(fontSize: 10))),
        StackedColumnSeries<DotPoint2, int>(
            name: 'INTEL I9',
            dataSource: points,
            xValueMapper: (DotPoint2 point, _) => point.x.toInt(),
            yValueMapper: (DotPoint2 point, _) => point.y2,
            dataLabelSettings: const DataLabelSettings(
                isVisible: true, textStyle: TextStyle(fontSize: 10))),
      ],
      primaryYAxis: NumericAxis(labelFormat: '{value}M'),
    );
  }
}


// Widget getBottomTitles(double value, TitleMeta meta) {
//   const style = TextStyle(
//     color: Color.fromARGB(255, 57, 55, 55),
//     fontWeight: FontWeight.bold,
//     fontSize: 14,
//   );

//   Widget month;
//   switch (value.toInt()) {
//     case 0:
//       month = const Text('Jan', style: style);
//       break;
//     case 1:
//       month = const Text('Feb', style: style);
//       break;
//     case 2:
//       month = const Text('Mar', style: style);
//       break;
//     case 3:
//       month = const Text('Apr', style: style);
//       break;
//     case 4:
//       month = const Text('May', style: style);
//       break;
//     default:
//       month = const Text('Jun', style: style);
//       break;
//   }
//   return SideTitleWidget(axisSide: meta.axisSide, child: month);
// }
