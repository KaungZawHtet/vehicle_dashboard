import 'dart:async';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/config.dart';


import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';
import 'package:vehicle_dashboard/widgets/home_route/drive_window/control_panel/drive_button_sign.dart';
import 'package:vehicle_dashboard/widgets/home_route/fuel_window/fuel_display_card.dart';

class FuelWindow extends StatefulWidget {
  const FuelWindow({super.key});

  @override
  State<FuelWindow> createState() => _FuelWindowState();
}

class _FuelWindowState extends State<FuelWindow> {
  @override
  Widget build(BuildContext context) {
    final grpcClient = Provider.of<VehicleClient>(context);

    final streamController = Provider.of<StreamController<double>>(context);

    return FutureBuilder<double>(
        future: grpcClient.getFuelLeft(),
        builder: (context, futureSnapshot) {
          if (futureSnapshot.hasData) {
            return Center(
                child: StreamBuilder<double>(
                    stream: streamController.stream.asyncExpand((fuelToFill) =>
                        grpcClient.watchFillFuel(amount: fuelToFill)),
                     initialData: futureSnapshot.data,
                    builder: (context, streamSnapshot) {
                      double fuelToFill = 0;
                      double fuelLeft = 0;
                      if (streamSnapshot.hasData) {
                        fuelToFill = totalFuel - streamSnapshot.data!;
                        fuelLeft = streamSnapshot.data!;
                      }

                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FuelDisplayCard(
                            fuelLeft: fuelLeft,
                          ),
                          AnimatedButton(
                            height: 80,
                            width: 200,
                            color: Colors.indigo,
                            child: const DriveButtonSign(
                                text: "Fill", icon: MdiIcons.gasStation),
                            onPressed: () {
                              streamController.add(fuelToFill);
                            },
                          )
                        ],
                      );
                    }));
          } else {
            return Container();
          }
        });
  }
}
