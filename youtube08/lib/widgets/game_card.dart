import 'package:flutter/material.dart';

class GameCard extends StatelessWidget {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloAnio = TextStyle(
      fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue);

  final String imagen, nombre, anio;

  GameCard({this.imagen = "", this.nombre = "", this.anio = ""});
  // sin {}
  //GameCard('GTA3.jpg','Grand Theft Auto III','2001')
  //con {}
  //GameCard(imagen:'GTA3.jpg',nombre:'Grand Theft Auto III',anio:'2001')
  @override
  Widget build(BuildContext context) {
    return Container(
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
            width: 250,
            image: AssetImage('assets/images/juegos/' + this.imagen),
          ),
          Container(
            child: Column(
              children: [
                Text(this.nombre, style: estiloTitulo),
                Icon(Icons.date_range),
                Text(this.anio, style: estiloAnio),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
