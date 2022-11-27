import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/my_app.dart';
import 'package:vehicle_dashboard/protos_generated/vehicle.pbgrpc.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/ping_client.dart';
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

  runApp( MultiProvider(providers: [
    Provider<VehicleClient>.value(value: VehicleClient()),

  ],
  child: const MyApp()));
}

