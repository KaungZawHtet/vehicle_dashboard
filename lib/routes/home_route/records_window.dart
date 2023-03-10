import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/db/db_client.dart';
import 'package:vehicle_dashboard/routes/record_editing_route.dart';

class RecordsWindow extends StatelessWidget {
  const RecordsWindow({super.key});

  @override
  Widget build(BuildContext context) {
    final db = Provider.of<AppDb>(context);
    return StreamBuilder<List<DriveRecord>>(
        stream: db.watchAllRecords(),
        builder: ((context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Slidable(
                  endActionPane: ActionPane(
                    motion: const ScrollMotion(),
                    children: [
                      SlidableAction(
                        onPressed: (context) {
                          var item = snapshot.data![index];

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    RecordEditingRoute(item: item)),
                          );
                        },
                        backgroundColor: Colors.orange,
                        foregroundColor: Colors.white,
                        icon: Icons.edit,
                        label: 'Edit',
                      ),
                      SlidableAction(
                        onPressed: (context) {
                          db.deleteRecordById(snapshot.data![index].id);
                        },
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        icon: Icons.delete,
                        label: 'Delete',
                      ),
                    ],
                  ),
                  child: ListTile(
                    onTap: () {
                      _showDetailDialog(context, snapshot.data![index]);
                    },
                    leading: const CircleAvatar(
                        backgroundColor: Colors.indigo,
                        foregroundColor: Colors.white,
                        child: Icon(MdiIcons.road)),
                    title: Text(snapshot.data![index].speedAction.toString()),
                    subtitle: Text(
                        "Total Distance : ${snapshot.data![index].distance}"),
                  ),
                );
              },
            );
          } else {
            return const Center(
              child: Text("No record"),
            );
          }
        }));
  }

  Future<void> _showDetailDialog(
      BuildContext context, DriveRecord record) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Detail'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text("Action: ${record.speedAction}"),
                Text("Distance: ${record.distance}"),
                Text("RPM: ${record.rpm}"),
                Text("Speed: ${record.speed}"),
                Text("Temperature: ${record.temperature}"),
                Text("Fuel: ${record.fuel}"),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ok'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

Future<void> showDeleteConfirmationForRecord(
    BuildContext context, AppDb db) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Detail'),
        content: SingleChildScrollView(
          child: ListBody(
            children: const <Widget>[
              Text("Are you sure you want to delete?"),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Ok'),
            onPressed: () {
              db.deleteAllRecords();
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
