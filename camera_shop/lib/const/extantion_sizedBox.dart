import 'package:flutter/widgets.dart';

extension WidgetSpacing on int {
  SizedBox get hSpace => SizedBox(height: toDouble());
  SizedBox get wSpace => SizedBox(width: toDouble());
}
