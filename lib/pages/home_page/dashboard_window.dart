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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RpmIndicator(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FuelIndicator(),
                  TemperatureIndicator(grpcClient: grpcClient)
                ],
              ),
              SpeedIndicator(),
            ],
          ),
          const Divider(),
          DrivePanel()
        ],
      ),
    );
  }
}
