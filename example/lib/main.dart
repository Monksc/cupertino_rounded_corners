import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Cupertino Rounded Corners'),
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                color: Colors.transparent,
                borderRadius: new BorderRadius.all(
                  new Radius.circular(4.0),
                ),
              ),
              margin: new EdgeInsets.all(8.0),
              child: new Material(
                color: Colors.white,
                shape: new SquircleBorder(
                  radius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                elevation: 8.0,
                child: new Padding(
                  padding: new EdgeInsets.all(8.0),
                  child: Text('HELLO WORLD'),
                ),
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                color: Colors.transparent,
                borderRadius: new BorderRadius.all(
                  new Radius.circular(4.0),
                ),
              ),
              margin: new EdgeInsets.all(8.0),
              child: new Material(
                color: Colors.cyan,
                shape: new SquircleBorder(
                  radius: BorderRadius.all(
                    Radius.elliptical(
                      40.0,
                      40.0,
                    ),
                  ),
                ),
                elevation: 8.0,
                child: new Padding(
                  padding: new EdgeInsets.all(30.0),
                  child: Text(
                    'Bigger and Colorful',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                color: Colors.transparent,
                borderRadius: new BorderRadius.all(
                  new Radius.circular(4.0),
                ),
              ),
              margin: new EdgeInsets.all(8.0),
              child: new Material(
                color: Colors.red,
                shape: new SquircleBorder(
                  radius: BorderRadius.all(
                    Radius.elliptical(
                      250.0,
                      40.0,
                    ),
                  ),
                ),
                elevation: 8.0,
                child: new Padding(
                  padding: new EdgeInsets.all(50.0),
                  child: Text(
                    'More curved horizontally',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                color: Colors.transparent,
                borderRadius: new BorderRadius.all(
                  new Radius.circular(4.0),
                ),
              ),
              margin: new EdgeInsets.all(8.0),
              child: new Material(
                color: Colors.red,
                shape: new SquircleBorder(
                  radius: BorderRadius.vertical(
                    top: Radius.elliptical(
                      250.0,
                      100.0,
                    ),
                  ),
                ),
                elevation: 8.0,
                child: new Padding(
                  padding: new EdgeInsets.all(50.0),
                  child: Text(
                    'Top is curved only',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                color: Colors.transparent,
                borderRadius: new BorderRadius.all(
                  new Radius.circular(4.0),
                ),
              ),
              margin: new EdgeInsets.all(8.0),
              child: new Material(
                color: Colors.green,
                shape: new SquircleBorder(
                  radius: BorderRadius.vertical(
                    bottom: Radius.elliptical(
                      250.0,
                      100.0,
                    ),
                  ),
                ),
                elevation: 8.0,
                child: new Padding(
                  padding: new EdgeInsets.all(50.0),
                  child: Text(
                    'Bottom is curved only',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            new Container(
              width: 150.0,
              height: 150.0,
              decoration: new BoxDecoration(
                color: Colors.transparent,
                borderRadius: new BorderRadius.all(
                  new Radius.circular(80.0),
                ),
              ),
              margin: new EdgeInsets.all(100.0),
              child: new Material(
                color: Colors.blue,
                shape: new SquircleBorder(),
                elevation: 8.0,
                child: new Padding(
                  padding: new EdgeInsets.all(50.0),
                  child: Text(
                    'Curved all the way',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            CupertinoCard(
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 100.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: const Text('Hello World'),
                ),
              ),
              elevation: 2.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(0.0),
              color: Colors.yellow,
              radius: BorderRadius.all(
                new Radius.circular(40.0),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
