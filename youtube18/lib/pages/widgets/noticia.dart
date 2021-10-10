import 'package:flutter/material.dart';

import '../../constants.dart';

class Noticia extends StatelessWidget {
  const Noticia({
    this.imagen = "",
    this.texto = "",
    this.fecha = "",
    Key? key,
  }) : super(key: key);

  final String imagen, texto, fecha;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: kSecondaryColor),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitWidth,
            image: AssetImage('assets/images/noticias/' + this.imagen),
          ),
        ),
        child: Column(
          children: [
            Spacer(),
            Container(
              height: 90,
              width: double.infinity,
              padding: EdgeInsets.all(5),
              color: Colors.black.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(this.texto,
                      style: TextStyle(
                          color: kTextColor, fontWeight: FontWeight.bold)),
                  Text(this.fecha,
                      style: TextStyle(color: kTextColor, fontSize: 12)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
