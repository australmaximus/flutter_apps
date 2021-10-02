import 'package:flutter/material.dart';

class ConfigScreen extends StatelessWidget {
  const ConfigScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
        //añadir icono a la derecha
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Icon(Icons.settings_applications),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text('Configuración'),
            OutlinedButton(
              child: Text('Volver'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
