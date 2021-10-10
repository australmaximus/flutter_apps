import 'package:flutter/material.dart';
import 'package:youtube18/constants.dart';
import 'package:youtube18/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MuySeguridad móvil',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        fontFamily: kFontFamily,
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: kFontFamily,
            ),
          ),
        ),
      ),
      home: HomePage(),
    );
  }
}
