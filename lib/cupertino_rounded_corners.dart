import 'package:flutter/material.dart';

class SquircleBorder extends ShapeBorder {
  final BorderSide side;
  final double radius;

  const SquircleBorder({
    this.side: BorderSide.none,
    this.radius,
  })
      : assert(side != null);

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
  Path getInnerPath(Rect rect, {TextDirection textDirection}) {
    return _squirclePath(rect.deflate(side.width), radius);
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection textDirection}) {
    return _squirclePath(rect, radius);
  }



  static Path _squirclePath(Rect rect, double radius) {

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
        ..cubicTo(startX, startY, startX, startY, midX,   startY)
        ..cubicTo(endX,   startY, endX,   startY, endX,   midY)
        ..cubicTo(endX,   endY,   endX,   endY,   midX,   endY)
        ..cubicTo(startX, endY,   startX, endY,   startX, midY)
        ..close();
    }

    return new Path()

    // Start position
      ..moveTo(startX, startY + radius)

    // top left corner
      ..cubicTo(startX, startY, startX, startY, startX + radius, startY,)

    // top line
      ..lineTo(endX - radius, startY)

    // top right corner
      ..cubicTo(endX, startY, endX, startY, endX, startY + radius,)

    // right line
      ..lineTo(endX, endY - radius)

    // bottom right corner
      ..cubicTo(endX, endY, endX, endY, endX - radius, endY,)

    // bottom line
      ..lineTo(startX + radius, endY)

    // bottom left corner
      ..cubicTo(startX, endY, startX, endY, startX, endY - radius,)

    // left line
    //..moveTo(startX, startY + radius)

      ..close();
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection textDirection}) {
    switch (side.style) {
      case BorderStyle.none:
        break;
      case BorderStyle.solid:
        var path = getOuterPath(rect.deflate(side.width / 2.0), textDirection: textDirection);
        canvas.drawPath(path, side.toPaint());
    }
  }
}



class CupertinoCard extends StatelessWidget {

  final EdgeInsets margin;
  final EdgeInsets padding;
  final Widget child;
  final double elevation;

  CupertinoCard({
    this.child,
    this.elevation = 2.0,
    this.margin: const EdgeInsets.all(4.0),
    this.padding: const EdgeInsets.all(0.0)
  });

  @override
  Widget build(BuildContext context) {

    return new Container(
      decoration: new BoxDecoration(
        color: Colors.transparent,
        borderRadius: new BorderRadius.all(new Radius.circular(4.0),),
      ),
      margin: margin,
      child: new Material(
        color: Colors.white,
        shape: new SquircleBorder(
          radius: 20.0,
        ),
        elevation: elevation,
        child: new Padding(
            padding: padding,
            child: child
        ),
      ),
    );

  }

}
