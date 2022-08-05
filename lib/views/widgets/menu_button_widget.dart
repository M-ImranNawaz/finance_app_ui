import 'package:flutter/material.dart';

import '../../constants.dart';

class MenuButtonWidget extends StatelessWidget {
  const MenuButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 8,
        right: 8,
      ),
      width: 20,
      height: 20,
      child: InkWell(
        onTap: () {},
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomPaint(
              painter: MenuPainter(),
              child: const SizedBox(
                width: 1,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            CustomPaint(
              painter: MenuPainter(),
              child: const SizedBox(
                width: 1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = kPColor
      ..strokeWidth = 2
      ..strokeCap = StrokeCap.round;

    Offset startingPoint = const Offset(0, 1);
    Offset endingPoint = Offset(size.width, 1);

    canvas.drawLine(startingPoint, endingPoint, paint);
  }

  @override
  bool shouldRepaint(MenuPainter oldDelegate) => false;

  @override
  bool shouldRebuildSemantics(MenuPainter oldDelegate) => false;
}
