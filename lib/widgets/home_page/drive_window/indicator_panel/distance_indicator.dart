import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DistanceIndicator extends StatelessWidget {
  final double distance;
  const DistanceIndicator({super.key, required this.distance});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(MdiIcons.road),
        const SizedBox(width:8),
         Text('${distance}'),
         const SizedBox(width: 8),
         const Text("km")],
    );
  }
}
