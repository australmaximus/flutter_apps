import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube13/screens/tab_home.dart';
import 'package:youtube13/screens/tab_lanzamientos.dart';
import 'package:youtube13/screens/tab_naves.dart';
import 'package:youtube13/screens/tab_visitantes.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  //crear una instancia para una lista
  var _paginas = [
    {
      'pagina': TabHome(),
      'texto': 'Home',
      'color': 0xFFD80100,
      'icono': MdiIcons.earth,
    },
    {
      'pagina': TabLanzamientos(),
      'texto': 'Lanzamientos',
      'color': 0xFF037470,
      'icono': MdiIcons.rocketLaunchOutline,
    },
    {
      'pagina': TabNaves(),
      'texto': 'Naves',
      'color': 0xFFFF8800,
      'icono': MdiIcons.ufoOutline,
    },
    {
      'pagina': TabVisitantes(),
      'texto': 'Visitantes',
      'color': 0xFF2C0728,
      'icono': MdiIcons.ufoOutline,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(_paginas[_currentIndex]['icono'] as IconData),
        title:
            Text('BottomNav: ' + _paginas[_currentIndex]['texto'].toString()),
        backgroundColor:
            Color(int.parse(_paginas[_currentIndex]['color'].toString())),
      ),
      //te lleva a la pagina segun el indice
      body: _paginas[_currentIndex]['pagina'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting, //con animacion
        // iterar dinamicamente a traves de la lista paginas y que retorne instancias de BottomNavigationBarItem
        items: _paginas.map((p) {
          return BottomNavigationBarItem(
            icon: Icon(p['icono'] as IconData),
            label: p['texto'].toString(),
            backgroundColor: Color(int.parse(p['color'].toString())),
          );
        }).toList(),
        // items: [
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[0]['icono'] as IconData),
        //     label: _paginas[0]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[0]['color'].toString())),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[1]['icono'] as IconData),
        //     label: _paginas[1]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[1]['color'].toString())),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[2]['icono'] as IconData),
        //     label: _paginas[2]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[2]['color'].toString())),
        //   ),
        //   BottomNavigationBarItem(
        //     icon: Icon(_paginas[3]['icono'] as IconData),
        //     label: _paginas[3]['texto'].toString(),
        //     backgroundColor: Color(int.parse(_paginas[3]['color'].toString())),
        //   ),
        // ],
        //se selecciona el indice de la pagina
        currentIndex: _currentIndex,
        onTap: (index) {
          //selecciona el icono del indice
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
