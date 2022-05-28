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
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 250,
                height: 220,
                child: new Container(
                  child: new Material(
                    color: Colors.blue,
                    shape: new SquircleBorder(
                      radius: BorderRadius.all(
                        new Radius.circular(170.0),
                      ),
                    ),
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
              ),
            ),
            CupertinoCard(
              splashColor: Colors.green,
              child: Container(
                constraints: BoxConstraints.expand(
                  height: 100.0,
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: const Text(
                    'This is a button',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              decoration: BoxDecoration(
                // Box decoration takes a gradient
                gradient: LinearGradient(
                  // Where the linear gradient begins and ends
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  // Add one stop for each color. Stops should increase from 0 to 1
                  stops: [0.0, 0.2, 0.8, 1.0],
                  colors: [
                    Color.fromRGBO(240, 40, 180, 1.0),
                    Color.fromRGBO(220, 40, 200, 1.0),
                    Color.fromRGBO(200, 40, 220, 1.0),
                    Color.fromRGBO(180, 40, 240, 1.0),
                  ],
                ),
              ),
              elevation: 2.0,
              margin: const EdgeInsets.all(4.0),
              padding: const EdgeInsets.all(0.0),
              radius: BorderRadius.only(
                topLeft: new Radius.circular(40.0),
                topRight: new Radius.circular(40.0),
                bottomLeft: new Radius.circular(40.0),
                bottomRight: new Radius.circular(40.0),
              ),
              onPressed: () {
                print("Clicked");
              },
            ),
          ],
        ),
      ),
    );
  }
}
