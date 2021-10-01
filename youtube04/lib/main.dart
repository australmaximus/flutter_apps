import 'package:flutter/material.dart';
import 'package:youtube04/screens/boton_screen.dart';
//import 'package:youtube/screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //quitar banner debug
      title: 'Flutter Demo',
      home: BotonScreen(),
    );
  }
}
