import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/my_app.dart';
import 'package:vehicle_dashboard/utilities/grpc_client.dart';
import 'package:window_manager/window_manager.dart';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  WindowOptions windowOptions = const WindowOptions(
    size: Size(670, 600),
    maximumSize: Size(670, 600),
    minimumSize: Size(670, 600),
    center: true,



  );
  windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp( MultiProvider(providers: [
    Provider<GrpcClient>.value(value: GrpcClient()),

  ],
  child: const MyApp()));
}

