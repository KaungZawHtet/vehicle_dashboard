import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';

import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';

class FuelWindow extends StatelessWidget {
  const FuelWindow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<double>(
          stream: Provider.of<VehicleClient>(context).watchFillFuel(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment:  CrossAxisAlignment.center,
                children: [
                  ListTile(

                    leading: const CircleAvatar(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        child: Icon(MdiIcons.road)),
                    title: Text("fwe"),
                    subtitle: Text(
                        "Total Distance : ${snapshot.data!}"),
                  )
                ],
              );
            } else {
              return const Text("No Fuel Data");
            }
          }),
    );
  }
}
