import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';

class TemperatureIndicator extends StatelessWidget {
  const TemperatureIndicator({
    Key? key,
    required this.temperature,
  }) : super(key: key);

  final double temperature;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
          const Icon(color: Colors.red, Icons.thermostat),
        Text('${temperature}`C', style: const TextStyle(color: Colors.red)),
      ],
    );
  }
}
