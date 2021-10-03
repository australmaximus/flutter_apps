import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube12/screens/tab_home.dart';
import 'package:youtube12/screens/tab_lanzamientos.dart';
import 'package:youtube12/screens/tab_naves.dart';
import 'package:youtube12/screens/tab_visitantes.dart';

class BottomNavScreen extends StatefulWidget {
  BottomNavScreen({Key? key}) : super(key: key);

  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  //crear una instancia para una lista
  List<Widget> _paginas = [
    TabHome(),
    TabLanzamientos(),
    TabNaves(),
    TabVisitantes(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      //te lleva a la pagina segun el indice
      body: _paginas[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.earth),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.rocketLaunchOutline),
            label: 'Lanzamientos',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.ufoOutline),
            label: 'Naves',
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.alienOutline),
            label: 'Visitantes',
          ),
        ],
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
