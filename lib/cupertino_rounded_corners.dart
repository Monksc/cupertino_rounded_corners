import 'package:flutter/material.dart';

Path SquirclePath(Rect rect, BorderRadius? radius) {
  final c = rect.center;
  double startX = rect.left;
  double endX = rect.right;
  double startY = rect.top;
  double endY = rect.bottom;

  double midX = c.dx;
  double midY = c.dy;

  if (radius == null) {
    return new Path()
      ..moveTo(startX, midY)
      ..cubicTo(startX, startY, startX, startY, midX, startY)
      ..cubicTo(endX, startY, endX, startY, endX, midY)
      ..cubicTo(endX, endY, endX, endY, midX, endY)
      ..cubicTo(startX, endY, startX, endY, startX, midY)
      ..close();
  }

  return new Path()

    // Start position
    ..moveTo(startX, startY + radius.topLeft.y)

    // top left corner
    ..cubicTo(
      startX,
      startY,
      startX,
      startY,
      startX + radius.topLeft.x,
      startY,
    )

    // top line
    ..lineTo(endX - radius.topRight.x, startY)

    // top right corner
    ..cubicTo(
      endX,
      startY,
      endX,
      startY,
      endX,
      startY + radius.topRight.y,
    )

    // right line
    ..lineTo(endX, endY - radius.bottomRight.y)

    // bottom right corner
    ..cubicTo(
      endX,
      endY,
      endX,
      endY,
      endX - radius.bottomRight.x,
      endY,
    )

    // bottom line
    ..lineTo(startX + radius.bottomLeft.x, endY)

    // bottom left corner
    ..cubicTo(
      startX,
      endY,
      startX,
      endY,
      startX,
      endY - radius.bottomLeft.y,
    )

    // left line
    //..moveTo(startX, startY + radius)
    ..close();
}

class SquircleBorder extends ShapeBorder {
  final BorderSide side;
  final BorderRadius? radius;

  const SquircleBorder({
    this.side: BorderSide.none,
    this.radius,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.all(side.width);

  @override
  ShapeBorder scale(double t) {
    return new SquircleBorder(
      side: side.scale(t),
      radius: radius,
    );
  }

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return SquirclePath(rect.deflate(side.width), radius);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return SquirclePath(rect, radius);
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        var path = getOuterPath(rect.deflate(side.width / 2.0),
            textDirection: textDirection);
        canvas.drawPath(path, side.toPaint());
    }
  }
}

class CupertinoCard extends StatelessWidget {
  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget? child;
  final double elevation;
  final Color color;
  final Color? splashColor;
  final BorderRadius radius;
  final Decoration? decoration;
  final VoidCallback? onPressed;

  CupertinoCard({
    this.child,
    this.elevation = 2.0,
    this.margin: const EdgeInsets.all(4.0),
    this.padding: const EdgeInsets.all(0.0),
    this.color: Colors.white,
    this.splashColor,
    this.decoration,
    this.radius: const BorderRadius.all(
      const Radius.circular(
        40.0,
      ),
    ),
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    var shapeborder = SquircleBorder(
      radius: radius,
    );

    return new Padding(
      padding: margin,
      child: new Material(
        elevation: elevation,
        shape: shapeborder,
        child: ClipPath.shape(
          shape: shapeborder,
          child: Material(
            color: color,
            child: Ink(
              decoration: decoration,
              child: InkWell(
                customBorder: shapeborder,
                onTap: onPressed,
                splashColor: splashColor,
                child: new Padding(
                  padding: padding,
                  child: child,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
