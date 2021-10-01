import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IconosScreen extends StatelessWidget {
  const IconosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Iconos App'),
      ),
      body: Column(
        children: [
          //Iconos Material Design ->Icon->MdiIcons
          //Iconos de https://materialdesignicons.com/
          Row(
            children: [
              Icon(Icons.person, size: 50),
              Icon(MdiIcons.alien, size: 50),
              Icon(MdiIcons.ufoOutline, size: 50, color: Colors.green)
            ],
          ),

          //Iconos FontAwesome ->FaIcon->FontAwesomeIcons
          //Iconos de https://fontawesome.com/v5.15/icons?d=gallery&p=2&m=free
          Row(
            children: [
              FaIcon(FontAwesomeIcons.bacteria, size: 50),
              FaIcon(FontAwesomeIcons.virus, size: 50),
              FaIcon(FontAwesomeIcons.angular, size: 50, color: Colors.red),
            ],
          )
        ],
      ),
    );
  }
}
