import 'package:flutter/material.dart';
import 'package:charts_app/widget/line_chart.dart';
import 'package:charts_app/utils/points.dart';
import 'package:charts_app/widget/bar_chart.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Charts'),
        backgroundColor: Colors.grey[800],
      ),
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              SizedBox(
                  height: 250,
                  width: 380,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: LineCharts(points: linePoints),
                  )),
              const SizedBox(height: 60),
              SizedBox(
                  height: 250,
                  width: 380,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                    child: BarCharts(points: barPoints),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
