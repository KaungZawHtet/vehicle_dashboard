import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';

import '../../protos_generated/vehicle.pb.dart';

class DashboardWindow extends StatelessWidget {
  DashboardWindow({super.key});

  late VehicleClient grpcClient;

  @override
  Widget build(BuildContext context) {
    grpcClient = VehicleClient();

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ScaleRadialGauge(
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
                unit:
                    TextSpan(text: 'x1000rpm', style: TextStyle(fontSize: 10)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const ScaleRadialGauge(
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
                    unit:
                        TextSpan(text: 'Litre', style: TextStyle(fontSize: 10)),
                  ),
                  Row(
                    children: [
                      const Icon(color: Colors.red, Icons.thermostat),
                      FutureBuilder<int>(
                          future: grpcClient.getTemperature("Default"),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              print("helloe");

                              return Text('${snapshot.data}`C',
                                  style: const TextStyle(color: Colors.red));
                            }

                            return Container();
                          }),
                    ],
                  )
                ],
              ),
              const ScaleRadialGauge(
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
              ),
              Column(
                children: [],
              )
            ],
          ),
          const Divider(),
        ],
      ),
    );
  }
}
