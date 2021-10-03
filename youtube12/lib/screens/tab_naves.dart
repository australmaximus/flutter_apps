import 'package:flutter/material.dart';

class TabNaves extends StatelessWidget {
  const TabNaves({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Naves',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    );
  }
}
