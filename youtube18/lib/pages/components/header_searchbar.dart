import 'package:flutter/material.dart';
import 'package:youtube18/constants.dart';

class HeaderSearchBar extends StatelessWidget {
  const HeaderSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: size.height * 0.15,
          child: CustomPaint(
            painter: _HeaderPainter(),
          ),
        ),
        Positioned(
          width: size.width,
          bottom: 10,
          left: 10,
          child: Row(
            children: [
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 5),
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Image(
                  image: AssetImage('assets/images/muyseguridad.jpg'),
                ),
              ),
              Spacer(),
              Container(
                width: 250,
                height: 50,
                margin: EdgeInsets.only(right: 15),
                padding: EdgeInsets.symmetric(horizontal: 3),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: 'Buscar',
                          hintStyle: TextStyle(
                            color: kTextColor,
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.search),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _HeaderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = new Paint();
    paint.color = kPrimaryColor;
    paint.style = PaintingStyle.fill;
    paint.strokeWidth = 10;

    final path = new Path();
    path.lineTo(0, size.height * 0.7);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
