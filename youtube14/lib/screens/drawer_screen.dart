import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube14/screens/drawer_lanzamientos.dart';
import 'package:youtube14/screens/drawer_naves.dart';
import 'package:youtube14/screens/drawer_visitantes.dart';

class DrawerScreen extends StatelessWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ejemplo Drawer'),
        backgroundColor: Color(0xFFC30033),
      ),
      body: Center(
        child: Text('Home Drawer',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        //fit: BoxFit.fill,
                        image: AssetImage('assets/images/guest.png'),
                      ),
                      border: Border.all(width: 2.0, color: Color(0xFFC30033)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text('Usuario', style: TextStyle(fontSize: 18)),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Lanzamientos'),
              leading: Icon(
                MdiIcons.rocketLaunchOutline,
                color: Color(0xFFC30033),
              ),
              onTap: () => _navegar(context, 1),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Naves'),
              leading: Icon(
                MdiIcons.ufoOutline,
                color: Color(0xFFC30033),
              ),
              onTap: () => _navegar(context, 2),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Visitantes'),
              leading: Icon(
                MdiIcons.alienOutline,
                color: Color(0xFFC30033),
              ),
              onTap: () => _navegar(context, 3),
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              title: Text('Cerrar'),
              leading: Icon(
                MdiIcons.arrowLeftBoldCircle,
                color: Color(0xFFC30033),
              ),
              onTap: () => Navigator.pop(context),
            ),
            Divider(
              thickness: 1,
            ),
          ],
        ),
      ),
    );
  }

  void _navegar(BuildContext context, int pagina) {
    List<Widget> paginas = [
      DrawerLanzamientos(),
      DrawerNaves(),
      DrawerVisitantes(),
    ];

    final route = MaterialPageRoute(builder: (context) {
      return paginas[pagina - 1];
    });

    //cerrar drawer al devolverse
    Navigator.pop(context);
    Navigator.push(context, route);
  }
}
