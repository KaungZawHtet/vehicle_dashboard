import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/config.dart';


class FuelIndicator extends StatelessWidget {
  final double fuel;
  const FuelIndicator({
    Key? key,
    required this.fuel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaleRadialGauge(
      maxValue: totalFuel,
      actualValue: fuel,
      // Optional Parameters
      minValue: 0,
      size: 140,
      title: const Text("Fuel"),
      titlePosition: TitlePosition.top,
      pointerColor: Colors.blue,
      needleColor: Colors.blue,
      decimalPlaces: 0,
      isAnimate: true,
      animationDuration: 500,
      unit: const TextSpan(text: 'Litre', style: TextStyle(fontSize: 10)),
    );
  }
}
