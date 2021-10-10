import 'package:flutter/material.dart';
import 'package:youtube18/constants.dart';
import 'package:youtube18/pages/widgets/noticia.dart';

class NoticiasList extends StatelessWidget {
  final listaNoticias = [
    {
      'imagen': 'n1.jpg',
      'texto':
          'Twitch ve filtrado su código fuente y las cifras de ingresos de los streamers',
      'fecha': 'Hace 2 días',
    },
    {
      'imagen': 'n2.jpg',
      'texto':
          'Caída de Facebook, WhatsApp e Instagram: ¿Ciberataque o fallo interno?',
      'fecha': 'Hace 5 días',
    },
    {
      'imagen': 'n3.jpg',
      'texto': 'Cuidado si te encuentras «perdido» un AirTag de Apple',
      'fecha': 'Hace 5 días',
    },
    {
      'imagen': 'n4.jpg',
      'texto':
          'FinFisher secuestra el administrador de arranque de Windows en UEFI',
      'fecha': 'Hace 1 semana',
    },
    {
      'imagen': 'n5.jpg',
      'texto':
          'Google alerta de una nueva técnica que hace indetectable el malware en Windows',
      'fecha': 'Hace 2 semanas',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        width: double.infinity,
        child: ListView(
          children: listaNoticias.map((n) {
            return Noticia(
              imagen: n['imagen'].toString(),
              texto: n['texto'].toString(),
              fecha: n['fecha'].toString(),
            );
          }).toList(),
          // children: [
          //   Noticia(
          //     imagen: 'n1.jpg',
          //     texto:
          //         'Twitch ve filtrado su código fuente y las cifras de ingresos de los streamers',
          //     fecha: '7 de Octubre',
          //   ),
          // ],
        ),
      ),
    );
  }
}
