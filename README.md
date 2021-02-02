# cupertino_rounded_corners

A new Flutter package to make cupertino rounded corners also refrered to as squircles using a bezier path and having the two points in the corners

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).



## Import it

```
import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
```

## To make your own card
```
new Container(
  decoration: new BoxDecoration(
    color: Colors.transparent,
    borderRadius: new BorderRadius.all(
      new Radius.circular(4.0),
    ),
  ),
  margin: margin,
  child: new Material(
    color: color,
    shape: new SquircleBorder(
      radius: BorderRadius.all(
        new Radius.circular(40.0),
      ),
    ),
    elevation: elevation,
    child: new Padding(padding: padding, child: child),
  ),
);
```

## Use the card
```
CupertinoCard(
  child: const Text("HELLO WORLD"),
  elevation: 2.0,
  margin: const EdgeInsets.all(4.0),
  padding: const EdgeInsets.all(0.0),
  color: Colors.white,
  radius: BorderRadius.all(
    new Radius.circular(40.0),
  ),
);
```

## Example Image
<!--![Alt text](screenshots/screenshot1.png?raw=true "Title")-->
![alt text](https://github.com/monksc/cupertino_rounded_corners/blob/master/screenshots/screenshot1.png?raw=true)
