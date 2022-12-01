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
   DashboardWindow({super.key});

   late  VehicleClient grpcClient;
   late  AppDb db;

  @override
  Widget build(BuildContext context) {
    grpcClient = Provider.of<VehicleClient>(context);
    var db = Provider.of<AppDb>(context);

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          StreamBuilder<NumberDataReply>(
              initialData: NumberDataReply(fuel: 40),
              stream: Provider.of<StreamController<SpeedType>>(context)
                  .stream
                  .asyncExpand(
                      (event) => grpcClient.watchNumberDataFlow(event, db)),
              builder: (context, snapshot) {
                double temperature = 0;
                double fuel = 0;
                double rpm = 0;
                double speed = 0;
                double distance = 0;

                if (snapshot.hasData) {
                  temperature = snapshot.data!.temperature;
                  fuel = snapshot.data!.fuel;
                  rpm = snapshot.data!.rpm;
                  speed = snapshot.data!.speed;
                  distance = snapshot.data!.distance;
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
              }),
          const Divider(),
          const DrivePanel()
        ],
      ),
    );
  }
}
