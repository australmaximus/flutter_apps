import 'package:flutter/material.dart';

class ExpandedSpacerPage extends StatelessWidget {
  const ExpandedSpacerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //obtener el ancho y el alto de la pantalla donde esta corriendo la aplicación
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded y Spacer'),
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
                height: 100,
                margin: EdgeInsets.only(bottom: 5),
                child: Row(
                  children: [
                    //Expanded que ocupe el espacio que queda disponible, se reparte de forma equitativa si hay mas de uno
                    Expanded(
                      //se puede forzar que tenga un tipo de preferencia con flex, que sea el doble que el otro
                      flex: 2,
                      child: ExampleBox(color: 0xFF0000FF, text: '1'),
                    ),
                    ExampleBox(color: 0xFFE11C5F, text: '2'),
                    ExampleBox(color: 0xFF9625AA, text: '3'),
                    Expanded(
                      child: ExampleBox(color: 0xFFC6D436, text: '4'),
                    ),
                  ],
                ),
              ),
            ),
            Flexible(
              child: Container(
                height: 100,
                child: Row(
                  children: [
                    ExampleBox(color: 0xFF0000FF, text: '1'),
                    //se hace un espacio entre medio
                    //los Spacer tambien tiene un flex, donde se puede decir como se reparten el espacio entre ellos
                    Spacer(
                      flex: 2,
                    ),
                    ExampleBox(color: 0xFFE11C5F, text: '2'),
                    ExampleBox(color: 0xFF9625AA, text: '3'),
                    Spacer(),
                    ExampleBox(color: 0xFFC6D436, text: '4'),
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
