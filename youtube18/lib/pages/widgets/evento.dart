import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import '../../constants.dart';

class Evento extends StatelessWidget {
  const Evento({
    this.fecha = "",
    this.hora = "",
    this.texto = "",
    this.ubicacion = "",
    Key? key,
  }) : super(key: key);

  final String fecha, hora, texto, ubicacion;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: EdgeInsets.all(5),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kPrimaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 3),
                child: Icon(MdiIcons.calendar, color: kPrimaryColor),
              ),
              Text(
                this.fecha,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Expanded(child: Text(this.texto)),
          Row(
            children: [
              Icon(
                MdiIcons.clockOutline,
                color: kAccentColor,
                size: 16,
              ),
              Text(
                this.hora,
                style: TextStyle(fontSize: 11),
              ),
              Spacer(),
              Icon(
                MdiIcons.mapMarkerRadiusOutline,
                color: kAccentColor,
                size: 16,
              ),
              Text(
                this.ubicacion,
                style: TextStyle(fontSize: 11),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
