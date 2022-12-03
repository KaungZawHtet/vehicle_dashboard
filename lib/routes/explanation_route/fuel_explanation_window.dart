import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_html/flutter_html.dart';
class FuelExplanationWindow extends StatelessWidget {
  const FuelExplanationWindow({super.key});


   Future<String> loadAsset() async {
    return await rootBundle.loadString('assets/explanations/fuel.html');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
        future: loadAsset(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
                child: Html(
              data: snapshot.data,
            ));
          }
          return Container();
        });
  }
}