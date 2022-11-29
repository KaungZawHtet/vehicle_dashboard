import 'dart:async';

import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/protos_generated/vehicle.pbgrpc.dart';
import 'package:vehicle_dashboard/widgets/home_page/drive_panel/drive_button_sign.dart';


class DrivePanel extends StatefulWidget {
  const DrivePanel({super.key});

  @override
  State<DrivePanel> createState() => _DrivePanelState();
}

class _DrivePanelState extends State<DrivePanel> {
  @override
  Widget build(BuildContext context) {
    var streamController = Provider.of<StreamController<SpeedType>>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            height: 150,
            width: 150,
            color: Colors.indigo,
            child: const DriveButtonSign(text: "Stop", icon: MdiIcons.stop),
            onPressed: () {
              streamController.add(SpeedType.STOP);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            height: 150,
            width: 150,
            color: Colors.indigo,
            child: const DriveButtonSign(text: "Slow", icon: MdiIcons.turtle),
            onPressed: () {
               streamController.add(SpeedType.SLOW);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            height: 150,
            width: 150,
            color: Colors.indigo,
            child:
                const DriveButtonSign(text: "Speed Up", icon: MdiIcons.rocket),
            onPressed: () {
               streamController.add(SpeedType.LEVER_UP);
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            height: 150,
            width: 150,
            color: Colors.indigo,
            child: const DriveButtonSign(
                text: "Preserve", icon: MdiIcons.steering),
            onPressed: () {

               streamController.add(SpeedType.PRESERVE);
            },
          ),
        ),
      ],
    );
  }
}
