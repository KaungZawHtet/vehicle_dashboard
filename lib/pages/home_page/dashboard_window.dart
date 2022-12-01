import 'dart:async';

import 'package:at_gauges/at_gauges.dart';
import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/db/db_client.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';

import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/indicator_panel/distance_indicator.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/indicator_panel/fuel_indicator.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/indicator_panel/rpm_indicator.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/indicator_panel/speed_indicator.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/indicator_panel/temperature_indicator.dart';

import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/drive_panel/drive_panel.dart';

import '../../protos_generated/vehicle.pb.dart';

class DashboardWindow extends StatelessWidget {
  const DashboardWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final grpcClient = Provider.of<VehicleClient>(context);

    final db = Provider.of<AppDb>(context);
    final screamController = Provider.of<StreamController<SpeedType>>(context);
    screamController.add(SpeedType.SLOW);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          FutureBuilder<NumberDataReply>(
            future: grpcClient.getNumberData(),
            builder: (context, futureSnapshot) {


              if (futureSnapshot.hasData) {

                return StreamBuilder<NumberDataReply>(
                    initialData: futureSnapshot.data!,
                    stream: screamController.stream.asyncExpand(
                        (event) => grpcClient.manageSpeed(event, db)),
                    builder: (context, streamSnapshot) {
                      double temperature = 0;
                      double fuel = 0;
                      double rpm = 0;
                      double speed = 0;
                      double distance = 0;

                      if (streamSnapshot.hasData) {
                        temperature = streamSnapshot.data!.temperature;
                        fuel = streamSnapshot.data!.fuel;
                        rpm = streamSnapshot.data!.rpm;
                        speed = streamSnapshot.data!.speed;
                        distance = streamSnapshot.data!.distance;
                      } else {
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
                              TemperatureIndicator(temperature: temperature),
                              const SizedBox(height: 20),
                              DistanceIndicator(distance: distance)
                            ],
                          ),
                          SpeedIndicator(speed: speed),
                        ],
                      );
                    });
              } else {
                return Container();
              }
            },
          ),
          const Divider(),
          const DrivePanel()
        ],
      ),
    );
  }
}
