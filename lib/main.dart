import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/my_app.dart';
import 'package:vehicle_dashboard/utilities/grpc_client.dart';


void main() {
  runApp( MultiProvider(providers: [
    Provider<GrpcClient>.value(value: GrpcClient()),

  ],
  child: const MyApp()));
}

