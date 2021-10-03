import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube13/screens/tab_home.dart';
import 'package:youtube13/screens/tab_lanzamientos.dart';
import 'package:youtube13/screens/tab_naves.dart';
import 'package:youtube13/screens/tab_visitantes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DefaultTabController(
        //cuantos tabs va a tener
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            leading: Icon(MdiIcons.tab),
            title: Text('Ejercicio Tabs'),
            backgroundColor: Color(0xFFC10037),
            bottom: TabBar(
              //para que se muevan al lado
              isScrollable: true,
              tabs: [
                Tab(
                  text: 'Home',
                  icon: Icon(MdiIcons.earth),
                ),
                Tab(
                  text: 'Lanzamientos',
                  icon: Icon(MdiIcons.rocketLaunchOutline),
                ),
                Tab(
                  text: 'Naves',
                  icon: Icon(MdiIcons.ufoOutline),
                ),
                Tab(
                  text: 'Visitantes',
                  icon: Icon(MdiIcons.alienOutline),
                ),
                // Tab(
                //   text: 'Invasores',
                //   icon: Icon(MdiIcons.spaceInvaders),
                // ),
                // Tab(
                //   text: 'Estaciones',
                //   icon: Icon(MdiIcons.spaceStation),
                // ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              TabHome(),
              TabLanzamientos(),
              TabNaves(),
              TabVisitantes(),
            ],
          ),
        ),
      ),
    );
  }
}
