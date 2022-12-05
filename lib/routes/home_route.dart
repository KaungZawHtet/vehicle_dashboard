import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/db/db_client.dart';
import 'package:vehicle_dashboard/app_drawer.dart';
import 'package:vehicle_dashboard/routes/home_route/drive_window.dart';
import 'package:vehicle_dashboard/routes/home_route/fuel_window.dart';
import 'package:vehicle_dashboard/routes/home_route/records_window.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/ping_client.dart';

// ignore: must_be_immutable
class HomeRoute extends StatefulWidget {
  HomeRoute({super.key, required this.title});

  final String title;
  var grpcClient = PingClient();

  @override
  State<HomeRoute> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const DriveWindow(),
    const FuelWindow(),
    const RecordsWindow(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer:  const AppDrawer(),
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
        floatingActionButton: getFloatingActionButton(context),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.oil_barrel),
              label: 'Fuel',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.book),
              label: 'Records',
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ));
  }

  Widget? getFloatingActionButton(BuildContext context) {
    switch (_selectedIndex) {
      case 2:
        final db = Provider.of<AppDb>(context);
        return FloatingActionButton(
          onPressed: () async {
            showDeleteConfirmationForRecord(context,db);
          },
          tooltip: 'Delete',
          child: const Icon(Icons.delete),
        );
      default:
        return null;
    }
  }
}
