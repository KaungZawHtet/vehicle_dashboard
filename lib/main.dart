import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/db/db_client.dart';
import 'package:vehicle_dashboard/my_app.dart';
import 'package:vehicle_dashboard/protos_generated/vehicle.pbgrpc.dart';

import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';
import 'package:window_manager/window_manager.dart';
const double appWidth = 670;
const double appHeight = 600;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(appWidth, appHeight),
    maximumSize: Size(appWidth, appHeight),
    minimumSize: Size(appWidth, appHeight),
    center: true,
  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(MultiProvider(providers: [
    Provider<VehicleClient>.value(value: VehicleClient()),
    Provider<StreamController<SpeedType>>.value(
        value: StreamController<SpeedType>.broadcast()),
    Provider<AppDb>.value(value: AppDb()),
    Provider<StreamController<double>>.value(
        value: StreamController<double>.broadcast()),
  ], child: const MyApp()));
}
