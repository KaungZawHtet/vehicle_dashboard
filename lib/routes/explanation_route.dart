import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/app_drawer.dart';
import 'package:vehicle_dashboard/routes/explanation_route/drive_explanation_window.dart';
import 'package:vehicle_dashboard/routes/explanation_route/fuel_explanation_window.dart';
import 'package:vehicle_dashboard/routes/explanation_route/record_explanation_window.dart';

class ExplanationRoute extends StatefulWidget {
  const ExplanationRoute({super.key, required this.title});
    final String title;

  @override
  State<ExplanationRoute> createState() => _ExplanationRouteState();
}

class _ExplanationRouteState extends State<ExplanationRoute> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        drawer:  const AppDrawer(),
        appBar: AppBar(
                    title: Text(widget.title),

                    bottom: const TabBar(
                      tabs: <Widget>[
                        Tab(text: 'Dashboard',),
                        Tab(text: 'Fuel'),
                         Tab(text: 'Record')
                      ],
                    ),
                  ),
         body:   SafeArea(
           child: TabBarView(
                      children: <Widget>[
                        DriveExplanationWindow(),
                        FuelExplanationWindow(),
                        RecordExplanationWindow()
                      ],
                    ),
         ),

        ),
    );
  }
}