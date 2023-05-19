import 'package:syncfusion_chart/utils/points.dart';
import 'package:flutter/material.dart';
// import 'package:fl_chart/fl_chart.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
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
  Widget build(BuildContext context) {
    return SfCartesianChart(
      title: ChartTitle(text: 'annual analysis'),
      legend: Legend(isVisible: true, position: LegendPosition.bottom),
      series: <ChartSeries>[
        LineSeries<DotPoint, int>(
            name: 'sales of CPU',
            dataSource: points,
            xValueMapper: (DotPoint point, _) => point.x.toInt(),
            yValueMapper: (DotPoint point, _) => point.y.toInt(),
            dataLabelSettings: const DataLabelSettings(
                isVisible: true, textStyle: TextStyle(fontSize: 10)))
      ],
      primaryYAxis: NumericAxis(labelFormat: '{value}M'),
    );
  }
}

//   Widget getLeftTitles(double value, TitleMeta meta) {
//     const style = TextStyle(
//       color: Color.fromARGB(255, 57, 55, 55),
//       fontWeight: FontWeight.w400,
//       fontSize: 14,
//     );

//     String categories;
//     switch (value.toInt()) {
//       case 5:
//         categories = 'low';
//         break;
//       case 10:
//         categories = 'mid';
//         break;
//       case 15:
//         categories = 'high';
//         break;
//       default:
//         categories = '';
//         break;
//     }
//     return Text(categories, style: style, textAlign: TextAlign.left);
//     ;
//   }
// }

// Widget getBottomTitles(double value, TitleMeta meta) {
//   const style = TextStyle(
//     color: Color.fromARGB(255, 57, 55, 55),
//     fontWeight: FontWeight.bold,
//     fontSize: 14,
//   );

//   Widget month;
//   switch (value.toInt()) {
//     case 1:
//       month = const Text('Mar', style: style);
//       break;
//     case 3:
//       month = const Text('Jun', style: style);
//       break;
//     case 5:
//       month = const Text('Sept', style: style);
//       break;
//     case 7:
//       month = const Text('Dec', style: style);
//       break;
//     default:
//       month = const Text('', style: style);
//       break;
//   }
//   return SideTitleWidget(axisSide: meta.axisSide, child: month);
// }
