import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'package:vehicle_dashboard/config.dart';


class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});



  @override
  Widget build(BuildContext context) {

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
              icon: MdiIcons.home,
              text: Routes.titleHome,
              onTap: () =>
                  Navigator.pushReplacementNamed(context, Routes.home)),
          _createDrawerItem(
              icon: MdiIcons.bookOpen,
              text: Routes.titleExplanation,
              onTap: () => Navigator.pushReplacementNamed(context, Routes.explanation)),


          /*
        ! NOTE: for debug
          _createDrawerItem(
              icon: MdiIcons.testTube,
              text: Routes.titleActivateTestRoute,
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BarcodeRoute()),
                  )),
          _createDrawerItem(
              icon: MdiIcons.testTube,
              text: Routes.titleDbTestRoute,
              onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MoorDbViewer(exdb)),
                  )),

                  */

        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: const BoxDecoration(
          color: themeColor,

        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              Padding(
                padding:  EdgeInsets.only(left: 8.0, bottom: 8),
                child: Text("Vehicle Dashboard",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500)),
              ),


            ]));
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      required GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
