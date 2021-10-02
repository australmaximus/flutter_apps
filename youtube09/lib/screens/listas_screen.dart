import 'package:flutter/material.dart';
import 'package:youtube09/screens/archivos_screen.dart';
import 'package:youtube09/screens/configuracion_screen.dart';
import 'package:youtube09/screens/pagos_screen.dart';
import 'package:youtube09/screens/usuarios_screen.dart';

class ListasScreen extends StatelessWidget {
  const ListasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: ListView(
        //poner opciones hacia abajo con listtitle
        children: [
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Color(0xFFC10037),
            ), // a la izquierda
            trailing: Icon(Icons.keyboard_arrow_right), // a la derecha
            title: Text('Configuración'),
            subtitle: Text('Preferencias de la aplicación'),
            onTap: () {
              _navegar(context, 'configuracion');
            },
          ),
          Divider(
            //linea separadora
            thickness: 2,
            color: Colors.lightBlue,
          ),
          ListTile(
            leading: Icon(
              Icons.cloud_download,
              color: Color(0xFFC10037),
            ), // a la izquierda
            trailing: Icon(Icons.keyboard_arrow_right), // a la derecha
            title: Text('Archivos'),
            subtitle: Text('Carpetas y archivos de proyectos'),
            onTap: () {
              _navegar(context, 'archivos');
            },
          ),
          Divider(
            //linea separadora
            thickness: 2,
            color: Colors.lightBlue,
          ),
          ListTile(
            tileColor: Color(0xFFFFABAF),
            leading: Icon(
              Icons.credit_card,
              color: Color(0xFFC10037),
            ), // a la izquierda
            trailing: Icon(Icons.keyboard_arrow_right), // a la derecha
            title: Text('Pagos'),
            subtitle: Text('Pagos relacionados a proyectos'),
            onTap: () {
              print('Opción de pagos');
              _navegar(context, 'pagos');
            },
          ),
          Divider(
            //linea separadora
            thickness: 2,
            color: Colors.lightBlue,
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: Color(0xFFC10037),
            ), // a la izquierda
            trailing: Icon(Icons.keyboard_arrow_right), // a la derecha
            title: Text('Usuarios'),
            subtitle: Text('Usuarios e interesados de proyectos'),
            onTap: () {
              print('Opción de usuarios');
              _navegar(context, 'usuarios');
            },
          ),
          Divider(
            //linea separadora
            thickness: 2,
            color: Colors.lightBlue,
          ),
        ],
      ),
    );
  }

  //funcion para navegar
  void _navegar(BuildContext context, String screen) {
    //construir la ruta
    final route = MaterialPageRoute(builder: (context) {
      switch (screen) {
        case 'configuracion':
          return ConfigScreen();
        case 'archivos':
          return ArchivosScreen();
        case 'pagos':
          return PagosScreen();
        default:
          return UsuariosScreen();
      }
    });

    //navegar hacia esa ruta
    Navigator.push(context, route);
  }
}
