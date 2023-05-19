import 'package:collection/collection.dart';

class DotPoint {
  final double x;
  final double y;
  DotPoint({required this.x, required this.y});
}

List<DotPoint> get linePoints {
  final data = <double>[3, 8, 5, 7, 14, 8, 10, 7, 14];
  return data
      .mapIndexed((index, element) => DotPoint(x: index.toDouble(), y: element))
      .toList();
}

List<DotPoint> get barPoints {
  final data = <double>[13, 40, 23, 34, 51, 39];
  return data
      .mapIndexed((index, element) => DotPoint(x: index.toDouble(), y: element))
      .toList();
}
