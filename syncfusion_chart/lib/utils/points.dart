import 'package:collection/collection.dart';

class DotPoint {
  final double x;
  final double y;
  DotPoint({required this.x, required this.y});
}

class DotPoint2 {
  final double x;
  final int y;
  final int y1;
  final int y2;
  DotPoint2(
      {required this.x, required this.y, required this.y1, required this.y2});
}

List<DotPoint> get linePoints {
  final data = <DotPoint>[
    DotPoint(x: 2017, y: 14),
    DotPoint(x: 2018, y: 10),
    DotPoint(x: 2019, y: 24),
    DotPoint(x: 2020, y: 16),
    DotPoint(x: 2021, y: 47),
    DotPoint(x: 2022, y: 36),
    DotPoint(x: 2023, y: 42)
  ];
  return data;
}

List<DotPoint2> get barPoints {
  final data = <DotPoint2>[
    DotPoint2(x: 2016, y: 39, y1: 52, y2: 77),
    DotPoint2(x: 2017, y: 41, y1: 50, y2: 73),
    DotPoint2(x: 2018, y: 43, y1: 54, y2: 78),
    DotPoint2(x: 2019, y: 53, y1: 59, y2: 84),
  ];
  return data;
}
