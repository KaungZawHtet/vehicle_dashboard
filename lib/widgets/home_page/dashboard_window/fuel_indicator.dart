import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

class FuelIndicator extends StatelessWidget {
  const FuelIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ScaleRadialGauge(
      maxValue: 47,
      actualValue: 10,
      // Optional Parameters
      minValue: 0,
      size: 140,
      title: Text("Fuel"),
      titlePosition: TitlePosition.top,
      pointerColor: Colors.blue,
      needleColor: Colors.blue,
      decimalPlaces: 0,
      isAnimate: true,
      animationDuration: 2000,
      unit: TextSpan(text: 'Litre', style: TextStyle(fontSize: 10)),
    );
  }
}
