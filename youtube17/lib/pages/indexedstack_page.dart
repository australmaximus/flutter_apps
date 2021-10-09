import 'package:flutter/material.dart';

//para usar setState se utiliza un statefulWidget

class IndexedStackPage extends StatefulWidget {
  IndexedStackPage({Key? key}) : super(key: key);

  @override
  _IndexedStackPageState createState() => _IndexedStackPageState();
}

class _IndexedStackPageState extends State<IndexedStackPage> {
  final estiloTexto = new TextStyle(
      fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white);

  //definimos como variable el indice del stack para manipularlo al presionar el boton
  int _stackIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('IndexedStack'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            color: Color(0xFFE7EDC6),
            child: IndexedStack(
              //la gracia del indexedStack es que tiene un atributo index que permite setear cual es el elemento que está adelante del Stack
              index: _stackIndex,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Color(0xFF00FF00),
                  child: Text(
                    '1',
                    style: estiloTexto,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Color(0xFF0000FF),
                  child: Text(
                    '2',
                    style: estiloTexto,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  color: Color(0xFFFF0000),
                  child: Text(
                    '3',
                    style: estiloTexto,
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  child: Text('Uno'),
                  onPressed: () {
                    setState(() {
                      _stackIndex = 0;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text('Dos'),
                  onPressed: () {
                    setState(() {
                      _stackIndex = 1;
                    });
                  },
                ),
                ElevatedButton(
                  child: Text('Tres'),
                  onPressed: () {
                    setState(() {
                      _stackIndex = 2;
                    });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
