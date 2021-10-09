import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //obtener el ancho y el alto de la pantalla donde esta corriendo la aplicación
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 50,
              child: Text('Ancho: ' + size.width.round().toString()),
            ),
            Flexible(
              child: Container(
                width: double.infinity,
                height: 200,
                color: Color(0xFFD6EBED),
                //Poner elementos uno encima de otro
                child: Stack(
                  //Para que no corte nada y se vea el overflow
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      color: Color(0xFF3D2CA0),
                      width: 180,
                      height: 180,
                    ),
                    //La posición de los elemntos en el estack se pueden controlar mediante el widget Positioned
                    Positioned(
                      bottom: -50,
                      left: 0,
                      child: Container(
                        color: Color(0xFF7A69F3),
                        width: 140,
                        height: 140,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleBox extends StatelessWidget {
  const ExampleBox({
    this.color = 0,
    this.text = "",
    Key? key,
  }) : super(key: key);

  final int color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: double.infinity,
      color: Color(this.color),
      alignment: Alignment.center,
      child: Text(
        this.text,
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
