import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/pages/home_page/dashboard_window.dart';
import 'package:vehicle_dashboard/pages/home_page/fuel_window.dart';
import 'package:vehicle_dashboard/pages/home_page/records_window.dart';
import 'package:vehicle_dashboard/utilities/grpc_client.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.title});

  final String title;
  var grpcClient = GrpcClient();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    const DashboardWindow(),
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
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: SafeArea(child: _widgetOptions.elementAt(_selectedIndex)),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            //! print(await widget.grpcClient.getMessage("Kzh"));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: 'Dashboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.oil_barrel),
              label: 'Gasoline',
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
}
