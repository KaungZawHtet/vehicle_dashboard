import 'package:flutter/material.dart';
import 'package:vehicle_dashboard/utilities/grpc_client.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.title});

  final String title;
  var grpcClient = GrpcClient();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          // Column is also a layout widget. It takes a list of children and

          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text("hello"),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          print(await widget.grpcClient.getMessage("Kzh"));
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
        )

    );
  }
}
