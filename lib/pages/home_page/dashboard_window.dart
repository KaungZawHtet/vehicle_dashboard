import 'dart:async';

import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/drive_panel.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/fuel_indicator.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/rpm_indicator.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/speed_indicator.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/temperature_indicator.dart';

import '../../protos_generated/vehicle.pb.dart';

class DashboardWindow extends StatelessWidget {
  DashboardWindow({super.key});

  late VehicleClient grpcClient;

  @override
  Widget build(BuildContext context) {
    grpcClient = Provider.of<VehicleClient>(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          StreamBuilder<NumberDataReply>(
              stream: Provider.of<StreamController<SpeedType>>(context)
                  .stream
                  .asyncExpand(
                      (event) => grpcClient.watchNumberDataFlow(event)),
              builder: (context, snapshot) {


                  double temperature = 0;
                  double fuel = 0;
                  double rpm = 0;
                  double speed = 0;



                if (snapshot.hasData) {
                  temperature = snapshot.data!.temperature;
                    fuel = snapshot.data!.fuel;
                      rpm = snapshot.data!.rpm;
                       speed = snapshot.data!.speed;
                }
               else {

                  temperature = 0;
                    fuel = 0;
                      rpm = 0;
                      speed = 0;
                }


                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RpmIndicator(rpm: rpm),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           FuelIndicator(fuel: fuel),
                          TemperatureIndicator(temperature: temperature)
                        ],
                      ),
                      SpeedIndicator(speed: speed),
                    ],
                  );


              }),
          const Divider(),
          const DrivePanel()
        ],
      ),
    );
  }
}
