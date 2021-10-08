import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube15/screens/drawer_lanzamientos.dart';
import 'package:youtube15/screens/drawer_naves.dart';
import 'package:youtube15/screens/drawer_visitantes.dart';

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

    // final route = MaterialPageRoute(builder: (context) {
    //   return paginas[pagina - 1];
    // });

    //ruta con animacion
    final pageRouteBuilder = PageRouteBuilder(
      transitionDuration: Duration(milliseconds: 300),
      pageBuilder: (context, animation, animationTime) {
        return paginas[pagina - 1];
      },
      transitionsBuilder: (context, animation, animationTime, child) {
        //retornar una instancia de la transicion que queremos
        return SlideTransition(
          position: Tween(
            // 1.0,-1.0 -> aparecerá de la esquina derecha hacia abajo
            begin: Offset(1.0, 0.0),
            end: Offset(0.0, 0.0),
          ).animate(animation),
          child: child,
        );
      },
    );

    //cerrar drawer al devolverse
    Navigator.pop(context);
    Navigator.push(context, pageRouteBuilder);
  }
}
