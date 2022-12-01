import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/db/db_client.dart';
import 'package:vehicle_dashboard/my_app.dart';
import 'package:vehicle_dashboard/protos_generated/vehicle.pbgrpc.dart';

import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(670, 660),
    maximumSize: Size(670, 660),
    minimumSize: Size(670, 660),
    center: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  var vehicleClient = VehicleClient();

  double fuelInside = await vehicleClient.getFuelLeft();
  runApp(MultiProvider(providers: [
    Provider<VehicleClient>.value(value: vehicleClient),
    Provider<StreamController<SpeedType>>.value(
        value: StreamController<SpeedType>.broadcast()),
    Provider<AppDb>.value(value: AppDb()),
    Provider<StreamController<double>>.value(
        value: StreamController<double>.broadcast()),
        Provider<double>.value(value: fuelInside)
  ], child: const MyApp()));
}
