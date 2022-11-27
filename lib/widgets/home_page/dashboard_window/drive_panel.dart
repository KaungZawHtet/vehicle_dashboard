import 'package:animated_button/animated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:vehicle_dashboard/widgets/home_page/dashboard_window/drive_button_sign.dart';

class DrivePanel extends StatefulWidget {
  const DrivePanel({super.key});

  @override
  State<DrivePanel> createState() => _DrivePanelState();
}

class _DrivePanelState extends State<DrivePanel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            height: 50,
            color: Colors.indigo,
            child: const DriveButtonSign(text:"Speed Up",icon: MdiIcons.rocket),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            height: 50,
            color: Colors.indigo,
            child: const DriveButtonSign(text:"Preserve",icon: MdiIcons.steering),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: AnimatedButton(
            height: 50,
            color: Colors.indigo,
              child:
                const DriveButtonSign(text: "slow", icon: MdiIcons.turtle),
            onPressed: () {},
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AnimatedButton(
            height: 50,
            color: Colors.indigo,
             child:
                const DriveButtonSign(text: "Stop", icon: MdiIcons.stop),
            onPressed: () {},
          ),
        )
      ],
    );
  }
}
