import 'package:flutter/material.dart';

import '../../constants.dart';

class DrawerButtonWidget extends StatelessWidget {
  DrawerButtonWidget({
    Key? key,
  }) : super(key: key);
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(
        top: 8,
        left: 8,
      ),
      width: 20,
      height: 20,
      child: InkWell(
        onTap: () {
          var width = MediaQuery.of(context).size.width;
          if (width < 600) {
            Scaffold.of(context).openDrawer();
          }
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: DrawerPainter(),
              child: const SizedBox(
                width: 10,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            CustomPaint(
              painter: DrawerPainter(),
              child: const SizedBox(
                width: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = kPColor
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    Offset startingPoint = Offset(0, size.height / 2);
    Offset endingPoint = Offset(size.width, size.height / 2);

    canvas.drawLine(startingPoint, endingPoint, paint);
  }

  @override
  bool shouldRepaint(DrawerPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(DrawerPainter oldDelegate) => false;
}
