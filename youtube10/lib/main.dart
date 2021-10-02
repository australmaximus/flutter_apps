import 'package:flutter/material.dart';
import 'package:youtube10/screens/archivos_screen.dart';
import 'package:youtube10/screens/configuracion_screen.dart';
import 'package:youtube10/screens/listas_screen.dart';
import 'package:youtube10/screens/pagos_screen.dart';
import 'package:youtube10/screens/usuarios_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //home: ListasScreen(),
      //manejar mas eficientemente las rutas
      routes: {
        '/': (context) => ListasScreen(),
        '/configuracion': (context) => ConfigScreen(),
        '/archivos': (context) => ArchivosScreen(),
        '/pagos': (context) => PagosScreen(),
        '/usuarios': (context) => UsuariosScreen(),
      },
      initialRoute: '/',
    );
  }
}
