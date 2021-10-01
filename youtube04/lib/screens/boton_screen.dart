import 'package:flutter/material.dart';

class BotonScreen extends StatefulWidget {
  BotonScreen({Key? key}) : super(key: key);

  @override
  _BotonScreenState createState() => _BotonScreenState();
}

class _BotonScreenState extends State<BotonScreen> {
  int _numero = 0; //variable privada poner un guion bajo antes del nombre

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejercicio StatefulWidget'),
      ),
      body: Column(
        children: [
          //Valor de la variable
          Container(
              padding: EdgeInsets.all(10.0), //añadir padding
              child: Text('Valor: $_numero', style: TextStyle(fontSize: 30))),
          //Row para los botones
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                child: Text('Aumentar'),
                onPressed: () {
                  print('Aumentar');
                  _numero++;
                  //setState redibuja la aplicacion el nuevo valor que tiene la variable numero
                  setState(() {});
                },
              ),
              OutlinedButton(
                child: Text('Disminuir'),
                onPressed: () {
                  print('Disminuir');
                  _numero--;
                  setState(() {});
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
