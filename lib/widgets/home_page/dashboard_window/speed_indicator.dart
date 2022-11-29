import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

class SpeedIndicator extends StatelessWidget {
    final double speed;
  const SpeedIndicator({
    Key? key,required this.speed
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScaleRadialGauge(
      maxValue: 240,
      actualValue: speed,
      // Optional Parameters
      minValue: 0,
      size: 220,
      title: const Text("Speedometer"),

      titlePosition: TitlePosition.top,
      pointerColor: Colors.blue,
      needleColor: Colors.blue,
      decimalPlaces: 0,
      isAnimate: true,
      animationDuration: 2000,
      unit: const TextSpan(text: 'Km/h', style: TextStyle(fontSize: 10)),
    );
  }
}
