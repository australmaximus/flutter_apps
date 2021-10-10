import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube18/constants.dart';
import 'package:youtube18/pages/widgets/evento.dart';

class EventosList extends StatelessWidget {
  final listaEventos = [
    {
      'fecha': '12 Octubre',
      'hora': '16:00',
      'texto': 'Documental Hacking',
      'ubicacion': 'Plataforma Zoom',
    },
    {
      'fecha': '15 Octubre',
      'hora': '12:00',
      'texto': 'Inscripción en cursos',
      'ubicacion': 'Plataforma Zoom',
    },
    {
      'fecha': '31 Octubre',
      'hora': '09:00',
      'texto': 'Entrevista Hacker Anónimo',
      'ubicacion': 'Plataforma Google Meet',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.symmetric(horizontal: 5),
      color: kBackgroundColor,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: listaEventos.map((e) {
          return Evento(
            fecha: e['fecha'].toString(),
            hora: e['hora'].toString(),
            texto: e['texto'].toString(),
            ubicacion: e['ubicacion'].toString(),
          );
        }).toList(),
        // children: [
        //   Evento(
        //     fecha: '12 Octubre',
        //     hora: '16:00',
        //     texto: 'Entrevista Chema Alonso',
        //     ubicacion: 'Plataforma Zoom',
        //   ),
        // ],
      ),
    );
  }
}
