import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

class RpmIndicator extends StatelessWidget {
  const RpmIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaleRadialGauge(
      maxValue: 8,
      actualValue: 1,
      // Optional Parameters
      minValue: 0,
      size: 220,
      title: Text("RPM"),
      titlePosition: TitlePosition.top,
      pointerColor: Colors.blue,
      needleColor: Colors.blue,
      decimalPlaces: 0,
      isAnimate: true,
      animationDuration: 2000,
      unit: TextSpan(text: 'x1000rpm', style: TextStyle(fontSize: 10)),
    );
  }
}
