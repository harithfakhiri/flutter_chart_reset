import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main() {
  return runApp(GaugeApp());
}

/// Represents the GaugeApp class
class GaugeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Radial Gauge Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

/// Represents MyHomePage class
class MyHomePage extends StatefulWidget {
  /// Creates the instance of MyHomePage
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _getGauge({bool isRadialGauge = true}) {
    return _getRadialGauge();
  }

  Widget _getRadialGauge() {
    return SfRadialGauge(
        title: GaugeTitle(
            text: 'indicator',
            textStyle:
                const TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
        // showLabels: false,
        axes: <RadialAxis>[
          RadialAxis(
            startAngle: 180,
            endAngle: 0,
            minimum: 0,
            maximum: 100,
            showAxisLine: false,
            showTicks: false,
            showLastLabel: true,
            showFirstLabel: false,
            labelsPosition: ElementsPosition.outside,
            ranges: <GaugeRange>[
              GaugeRange(
                  startValue: 0,
                  endValue: 10,
                  color: Color.fromARGB(223, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 10,
                  endValue: 20,
                  color: Color.fromARGB(113, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 20,
                  endValue: 30,
                  color: Color.fromARGB(223, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 30,
                  endValue: 40,
                  color: Color.fromARGB(113, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 40,
                  endValue: 50,
                  color: Color.fromARGB(223, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 50,
                  endValue: 60,
                  color: Color.fromARGB(113, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 60,
                  endValue: 70,
                  color: Color.fromARGB(223, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 70,
                  endValue: 80,
                  color: Color.fromARGB(113, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 80,
                  endValue: 90,
                  color: Color.fromARGB(223, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40),
              GaugeRange(
                  startValue: 90,
                  endValue: 100,
                  color: Color.fromARGB(113, 175, 175, 175),
                  startWidth: 40,
                  endWidth: 40)
            ],
          ),
          RadialAxis(
              startAngle: 180,
              endAngle: 0,
              showLabels: false,
              minimum: 0,
              maximum: 100,
              radiusFactor: 0.7,
              // canScaleToFit: true,
              ranges: <GaugeRange>[
                GaugeRange(
                    label: "top",
                    startValue: 90,
                    endValue: 100,
                    color: Colors.green,
                    startWidth: 50,
                    endWidth: 50),
                GaugeRange(
                    label: "good",
                    startValue: 70,
                    endValue: 90,
                    color: Colors.blue,
                    startWidth: 50,
                    endWidth: 50),
                GaugeRange(
                    label: "average",
                    startValue: 20,
                    endValue: 70,
                    color: Colors.yellow,
                    startWidth: 50,
                    endWidth: 50),
                GaugeRange(
                    label: "poor",
                    startValue: 0,
                    endValue: 20,
                    color: Colors.red,
                    startWidth: 50,
                    endWidth: 50)
              ],
              pointers: <GaugePointer>[
                NeedlePointer(
                  value: 65,
                  enableAnimation: true,
                )
              ],
              annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Container(
                        child: const Text('65',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold))),
                    angle: 90,
                    positionFactor: 0.5)
              ])
        ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Syncfusion Flutter Gauge')),
        body: _getGauge());
  }
}
