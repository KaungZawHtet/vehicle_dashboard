import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vehicle_dashboard/db/db_client.dart';
import 'package:vehicle_dashboard/pages/home_page/dashboard_window.dart';
import 'package:vehicle_dashboard/pages/home_page/fuel_window.dart';
import 'package:vehicle_dashboard/pages/home_page/records_window.dart';
import 'package:vehicle_dashboard/utilities/grpc_clients/ping_client.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.title});

  final String title;
  var grpcClient = PingClient();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    DashboardWindow(),
    FuelWindow(),
    RecordsWindow(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
