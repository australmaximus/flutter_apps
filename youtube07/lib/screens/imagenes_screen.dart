import 'package:flutter/material.dart';

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
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(5.0),
              margin: EdgeInsets.all(5.0),
              height: 450,
              //poner borde
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: Column(
                children: [
                  Image(
                    width: 310,
                    image: AssetImage('assets/images/juegos/GTA3.png'),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Text('Grand Theft Auto III'),
                        Text('2001'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
