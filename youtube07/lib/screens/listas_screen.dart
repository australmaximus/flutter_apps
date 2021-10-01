import 'package:flutter/material.dart';

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
              print('Opción de configuración');
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
              print('Opción de archivos');
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
}
