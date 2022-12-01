import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/constants.dart';

import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/drive_panel/drive_button_sign.dart';
import 'package:vehicle_dashboard/widgets/home_page/fuel_window/fuel_display_card.dart';

class FuelWindow extends StatelessWidget {
  const FuelWindow({super.key});

  @override
  Widget build(BuildContext context) {
    var grpcClient = Provider.of<VehicleClient>(context);
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FuelDisplayCard(),
       AnimatedButton(
                height: 80,
                width: 200,
                color: Colors.indigo,
                child: const DriveButtonSign(
                    text: "Fill", icon: MdiIcons.gasStation),
                onPressed: () {

                },
              )
      ],
    ));
  }
}
