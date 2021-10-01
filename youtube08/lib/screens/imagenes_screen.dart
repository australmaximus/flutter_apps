import 'package:flutter/material.dart';
import 'package:youtube08/widgets/game_card.dart';

class ImagenesScreen extends StatelessWidget {
  const ImagenesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.gamepad_outlined),
        title: Text('Imágenes'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          height: 550,
          child: ListView(
            scrollDirection: Axis.horizontal,
            //reverse: true,
            children: [
              GameCard(
                nombre: 'Grand Theft Auto III',
                anio: '2001',
                imagen: 'GTA3.png',
              ),
              GameCard(
                nombre: 'Grand Theft Auto Vice City',
                anio: '2002',
                imagen: 'GTAVC.jpg',
              ),
              GameCard(
                nombre: 'Grand Theft Auto San Andreas',
                anio: '2004',
                imagen: 'GTASA.jpg',
              ),
              GameCard(
                nombre: 'Grand Theft Auto IV',
                anio: '2008',
                imagen: 'GTA4.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
