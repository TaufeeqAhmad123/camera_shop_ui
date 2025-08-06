import 'package:flutter/widgets.dart';

extension WidgetSpacing on int {
  SizedBox get vSpace => SizedBox(height: toDouble());
  SizedBox get hSpace => SizedBox(width: toDouble());
}
