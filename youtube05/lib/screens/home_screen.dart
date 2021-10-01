import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final estiloTextoFila = new TextStyle(fontSize: 25);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.android), // leading ->poner al costado izquierdo
        title: Text('Primera App'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          //row se vuelve hijo del column al presionar ctrl . y seleccionar Wrap with column
          //contenedor es como un div
          Container(
            color: Color(0XFFD6EBED),
            height: 150, //alto del container
            child: Row(
              //alineamiento
              //alineamento horizontal en Row (eje X)
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              //alineamiento vertical en Row (eje Y)
              crossAxisAlignment: CrossAxisAlignment.center,
              //child en plural
              children: <Widget>[
                Text('Uno', style: estiloTextoFila),
                Text('Dos', style: estiloTextoFila),
                Text('Tres', style: estiloTextoFila),
                Text('Cuatro', style: estiloTextoFila),
              ],
            ),
          ),
          Row(
            //alinear iconos al medio
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.home, size: 50, color: Colors.amber),
              Icon(Icons.face, size: 50),
              Icon(Icons.favorite, size: 50, color: Colors.lime),
              Icon(Icons.pets, size: 50),
              //poner color en hexadecimal 0XFFcodigo
              Icon(Icons.language, size: 50, color: Color(0XFFC10037)),
            ],
          ),
        ],
      ),
      //agregar boton flotante
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.check), // poner icono al hijo
        //al presionar ejecute esta funcion
        onPressed: () {
          print('Floating Action Button');
        },
      ),
    );
  }
}
