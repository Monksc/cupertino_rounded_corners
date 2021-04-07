import 'package:cupertino_rounded_corners/cupertino_rounded_corners.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Material(
        color: Colors.white,
        child: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: ListView(
            children: [
              CupertinoCard(
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                elevation: 20,
                child: SizedBox(
                  height: 200,
                  child: Center(child: Text("")),
                ),
              ),
              CupertinoCard(
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                elevation: 20,
                child: SizedBox(
                  height: 200,
                  child: Center(child: Text("")),
                ),
              ),
              CupertinoCard(
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                elevation: 20,
                child: SizedBox(
                  height: 200,
                  child: Center(child: Text("sdf")),
                ),
              ),
              CupertinoCard(
                margin: EdgeInsets.all(20),
                color: Colors.blue,
                elevation: 20,
                child: SizedBox(
                  height: 200,
                  child: Center(child: Text("hfdalshdfs;la")),
                ),
              ),
              new Container(
                margin: EdgeInsets.all(20),
                child: new Material(
                  color: Colors.cyan,
                  elevation: 5.0,
                  child: new Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: SizedBox(
                      height: 200,
                      child: Center(
                        child: Text('HELLO WORLD'),
                      ),
                    ),
                  ),
                ),
              ),
              new Container(
                margin: EdgeInsets.all(20),
                child: new Material(
                  color: Colors.cyan,
                  elevation: 5.0,
                  child: new Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: SizedBox(
                      height: 200,
                      child: Center(
                        child: Text('HELLO WORLD'),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/*

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
*/
