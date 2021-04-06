import 'package:flutter/material.dart';

extension WidgetExtention on Widget {
  Widget gap({double top = 0.0, bottom = 0.0, left = 0.0, right = 0.0}) =>
      Padding(
        padding:
            EdgeInsets.only(top: top, bottom: bottom, left: left, right: right),
        child: this,
      );
}
