import 'package:flutter/material.dart';

class ArchivosScreen extends StatelessWidget {
  const ArchivosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Archivos'),
      ),
      body: Center(
        child: Text('Archivos'),
      ),
    );
  }
}
