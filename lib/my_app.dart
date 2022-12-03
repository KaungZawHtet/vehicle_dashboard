import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/config.dart';
import 'package:vehicle_dashboard/routes/explanation_route.dart';
import 'package:vehicle_dashboard/routes/home_route.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vehicle Dashboard',
    routes: <String, WidgetBuilder>{
              Routes.home: (BuildContext context) => HomeRoute(title: Routes.titleHome),

              Routes.explanation: (BuildContext context) => ExplanationRoute(title: Routes.titleExplanation),

            },
      theme: ThemeData(
        primarySwatch: Colors.indigo,

      ),
      home: HomeRoute(title: 'Home'),
    );
  }
}


