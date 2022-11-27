import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

class SpeedIndicator extends StatelessWidget {
  const SpeedIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaleRadialGauge(
      maxValue: 240,
      actualValue: 70,
      // Optional Parameters
      minValue: 0,
      size: 220,
      title: Text("Speedometer"),

      titlePosition: TitlePosition.top,
      pointerColor: Colors.blue,
      needleColor: Colors.blue,
      decimalPlaces: 0,
      isAnimate: true,
      animationDuration: 2000,
      unit: TextSpan(text: 'Km/h', style: TextStyle(fontSize: 10)),
    );
  }
}
