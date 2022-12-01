import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/constants.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/vehicle_client.dart';
import 'package:vehicle_dashboard/widgets/home_page/fuel_window/count_box.dart';

class FuelDisplayCard extends StatelessWidget {
  const FuelDisplayCard({super.key, this.fuelLeft =0});
  final double fuelLeft;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Stack(
        children: <Widget>[
          Container(
              height: 100,
              width: 200,
              //  padding: const EdgeInsets.all(25),
              //  margin: const EdgeInsets.only(bottom: 25, top: 25, left: 15, right: 15),
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 3.0,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CountBox(
                      amount: '$TOTAL_FUEL',
                      title: "Capacity",
                      icon: MdiIcons.fuel),
                  const SizedBox(width: 20),
                  CountBox(
                      amount: fuelLeft.toString(),
                      title: "Fuel left",
                      icon: MdiIcons.fuel)
                ],
              )),
        ],
      ),
    );
  }
}
