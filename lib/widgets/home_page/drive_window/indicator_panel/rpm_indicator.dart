import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

class RpmIndicator extends StatelessWidget {
  final double rpm;
  const RpmIndicator({Key? key,required this.rpm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScaleRadialGauge(
      maxValue: 8,
      actualValue: rpm,
      // Optional Parameters
      minValue: 0,
      size: 220,
      title: const Text("RPM"),
      titlePosition: TitlePosition.top,
      pointerColor: Colors.blue,
      needleColor: Colors.blue,
      decimalPlaces: 0,
      isAnimate: true,
      animationDuration: 500,
      unit: const TextSpan(text: 'x1000rpm', style: TextStyle(fontSize: 10)),
    );
  }
}
