import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.android),
        title: Text('Primera App'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(child: Text('Hola Mundo')),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check),
        onPressed: () {
          print('Ha presiona el boton flotante');
        },
      ),
    );
  }
}
