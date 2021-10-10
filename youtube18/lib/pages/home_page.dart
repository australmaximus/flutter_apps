import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:youtube18/constants.dart';
import 'package:youtube18/pages/components/header_searchbar.dart';
import 'package:youtube18/pages/components/noticias_list.dart';

import 'components/bottom_nav.dart';
import 'components/eventos_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(MdiIcons.securityNetwork),
        title: Text('MuySeguridad', style: TextStyle(color: kSecondaryColor)),
      ),
      body: Column(
        children: [
          HeaderSearchBar(),
          EventosList(),
          NoticiasList(),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
