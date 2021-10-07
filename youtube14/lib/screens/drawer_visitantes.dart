import 'package:flutter/material.dart';

class DrawerVisitantes extends StatelessWidget {
  const DrawerVisitantes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visitantes'),
      ),
      body: Center(
        child: Text(
          'Visitantes',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
