import 'package:flutter/material.dart';

class TabLanzamientos extends StatelessWidget {
  const TabLanzamientos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Lanzamientos',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
