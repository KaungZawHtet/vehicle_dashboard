import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/protos_generated/vehicle.pbenum.dart';

class SpeedActonFormField extends StatefulWidget {
  const SpeedActonFormField(
      {super.key,
      required this.title,
      required this.speedAction,
      required this.onSaved});
  final String speedAction;
  final String title;
  final void Function(String?)? onSaved;

  @override
  State<SpeedActonFormField> createState() => _SpeedActonFormFieldState();
}

class _SpeedActonFormFieldState extends State<SpeedActonFormField> {
  late String _selectedSpeedType;

  @override
  void initState() {
    super.initState();
    _selectedSpeedType = widget.speedAction;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButtonFormField(
        value: _selectedSpeedType,
        items: [
          SpeedType.LEVER_UP.toString(),
          SpeedType.PRESERVE.toString(),
          SpeedType.SLOW.toString(),
          SpeedType.STOP.toString(),
        ].map((String option) {
          return DropdownMenuItem(
            value: option,
            child: Text(option),
          );
        }).toList(),
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.title,
        ),
        onChanged: (String? value) {
          setState(() {
            _selectedSpeedType = value!;
          });
        },
        onSaved: widget.onSaved,
      ),
    );
  }
}
