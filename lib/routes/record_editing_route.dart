import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/config.dart';
import 'package:vehicle_dashboard/db/db_client.dart';
import 'package:vehicle_dashboard/widgets/record_editing_route/date_time_form_field.dart';
import 'package:vehicle_dashboard/widgets/record_editing_route/number_form_fields.dart';
import 'package:vehicle_dashboard/widgets/record_editing_route/speed_action_form_field.dart';

enum DriveRecordDataType { rpm, speed, distance, temperature, fuel }

class DriveRecordCache {
  int? id;
  String? speedAction;
  double? distance;
  double? rpm;
  double? speed;
  double? fuel;
  double? temperature;
  DateTime? timeCreated;
}

class RecordEditingRoute extends StatefulWidget {
  const RecordEditingRoute({super.key, required this.item});

  final DriveRecord item;

  @override
  State<RecordEditingRoute> createState() => _RecordEditingRouteState();
}

class _RecordEditingRouteState extends State<RecordEditingRoute> {
  final _formKey = Keys.editFormKey;


  @override
  void initState() {
    super.initState();

  }

  @override
  Widget build(BuildContext context) {
    var db = Provider.of<AppDb>(context);
    DriveRecordCache cache = DriveRecordCache();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Edit the Record"),
          leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios),
        //replace with our own icon data.
      )),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              const SizedBox(height: 8),
              SpeedActonFormField(
                  speedAction: widget.item.speedAction!,
                  title: "Speed Action",
                  onSaved: (value) {
                    cache.speedAction = value;
                  }),
              NumberFormField(
                title: 'rpm',
                data: widget.item.rpm ?? 0,
                onSaved: (value) {
                  cache.rpm = double.parse(value ?? '0');
                },
              ),
              NumberFormField(
                title: 'speed',
                data: widget.item.speed ?? 0,
                onSaved: (value) {
                  cache.speed = double.parse(value ?? '0');
                },
              ),
              NumberFormField(
                title: 'fuel',
                data: widget.item.fuel ?? 0,
                onSaved: (value) {
                  cache.fuel = double.parse(value ?? '0');
                },
              ),
              NumberFormField(
                title: 'temperature',
                data: widget.item.temperature ?? 0,
                onSaved: (value) {
                  cache.temperature = double.parse(value ?? '0');
                },
              ),
              NumberFormField(
                title: 'distance',
                data: widget.item.distance ?? 0,
                onSaved: (value) {
                  cache.distance = double.parse(value ?? '0');
                },
              ),
              DateTimeFormField(
                title: 'distance',
                data: widget.item.timeCreated ?? DateTime.now(),
                onSaved: (value) {
                  cache.timeCreated = DateTime.parse(value!);

                  if (kDebugMode) {
                    print(DateFormat('yyyy-MM-dd HH:mm').format(cache.timeCreated!));
                  }
                },
              ),

              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: ElevatedButton(
                      child: const Text('Edit'),
                      onPressed: () {
                        if (Keys.editFormKey.currentState!.validate()) {
                          Keys.editFormKey.currentState!.save();

                          db.updateRecord(
                              cache.speedAction,
                              cache.distance,
                              cache.rpm,
                              cache.speed,
                              cache.fuel,
                              cache.temperature,
                              cache.timeCreated,
                              widget.item.id);

                          ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  content: Text("Edited"),
                                  duration: Duration(seconds: 1)));
                        }
                      }),
                ),
              )

              // Add TextFormFields and ElevatedButton here.
            ],
          ),
        ),
      ),
    );
  }
}
