import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';

class TemperatureIndicator extends StatelessWidget {
  const TemperatureIndicator({
    Key? key,
    required this.grpcClient,
  }) : super(key: key);

  final VehicleClient grpcClient;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(color: Colors.red, Icons.thermostat),
        StreamBuilder<int>(
            stream: grpcClient.watchNumberDataFlow(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                print("hello");
                return Text('${snapshot.data}`C',
                    style: const TextStyle(color: Colors.red));
              }

              return Container();
            }),
      ],
    );
  }
}
