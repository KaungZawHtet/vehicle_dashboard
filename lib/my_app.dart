import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vehicle Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.indigo,

      ),
      home: HomePage(title: 'Home'),
    );
  }
}


