import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibration/vibration.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.green, // navigation bar color
    statusBarColor: Colors.green, // status bar color
  ));

  runApp(VibratingApp());
}

class VibratingApp extends StatefulWidget {
  @override
  _VibratingAppState createState() => _VibratingAppState();
}

class _VibratingAppState extends State<VibratingApp> {
  bool _canVibrate = true;

  @override
  initState() {
    super.initState();
    init();
  }

  init() async {
    setState(() {
      _canVibrate
          ? print("This device can vibrate")
          : print("This device cannot vibrate");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: const Text('WristAble Vibrations (Patterns)'),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              ListTile(
                title: Text("Normal"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate();
                      },
              ),
              ListTile(
                title: Text("10 x 133 (60)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                          133,
                          60,
                        ]);
                      },
              ),
              ListTile(
                title: Text("Short"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          250,
                        ]);
                      },
              ),
              ListTile(
                title: Text("Long"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          500,
                        ]);
                      },
              ),
              ListTile(
                title: Text("2 x 250 (125)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          250,
                          125,
                          250,
                        ]);
                      },
              ),
              ListTile(
                title: Text("2 x 400 (125)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          400,
                          125,
                          400,
                        ]);
                      },
              ),
              ListTile(
                title: Text("2 x 400 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          400,
                          250,
                          400,
                        ]);
                      },
              ),
              ListTile(
                title: Text("2 x 600 (500)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          600,
                          500,
                          600,
                        ]);
                      },
              ),
              ListTile(
                title: Text("2 x 600 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          600,
                          250,
                          600,
                        ]);
                      },
              ),
              ListTile(
                title: Text("2 x 800 (500)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          800,
                          500,
                          800,
                        ]);
                      },
              ),
              ListTile(
                title: Text("3 x 250 (125)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          250,
                          125,
                          250,
                          125,
                          250,
                        ]);
                      },
              ),
              ListTile(
                title: Text("3 x 250 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          250,
                          250,
                          250,
                          250,
                          250,
                        ]);
                      },
              ),
              ListTile(
                title: Text("3 x 400 (125)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          400,
                          125,
                          400,
                          125,
                          400,
                        ]);
                      },
              ),
              ListTile(
                title: Text("3 x 400 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          400,
                          250,
                          400,
                          250,
                          400,
                        ]);
                      },
              ),
              ListTile(
                title: Text("3 x 600 (500)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          600,
                          500,
                          600,
                          500,
                          600,
                        ]);
                      },
              ),
              ListTile(
                title: Text("3 x 600 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          600,
                          250,
                          600,
                          250,
                          600,
                        ]);
                      },
              ),
              ListTile(
                title: Text("3 x 800 (500)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          800,
                          500,
                          800,
                          500,
                          800,
                        ]);
                      },
              ),
              ListTile(
                title: Text("4 x 250 (125)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          250,
                          125,
                          250,
                          125,
                          250,
                          125,
                          250,
                        ]);
                      },
              ),
              ListTile(
                title: Text("4 x 250 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          250,
                          250,
                          250,
                          250,
                          250,
                          250,
                          250,
                        ]);
                      },
              ),
              ListTile(
                title: Text("4 x 400 (125)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          400,
                          125,
                          400,
                          125,
                          400,
                          125,
                          400,
                        ]);
                      },
              ),
              ListTile(
                title: Text("4 x 400 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          400,
                          250,
                          400,
                          250,
                          400,
                          250,
                          400,
                        ]);
                      },
              ),
              ListTile(
                title: Text("4 x 600 (500)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          600,
                          500,
                          600,
                          500,
                          600,
                          500,
                          600,
                        ]);
                      },
              ),
              ListTile(
                title: Text("4 x 600 (250)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          600,
                          250,
                          600,
                          250,
                          600,
                          250,
                          600,
                        ]);
                      },
              ),
              ListTile(
                title: Text("4 x 800 (500)"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          800,
                          500,
                          800,
                          500,
                          800,
                          500,
                          800,
                        ]);
                      },
              ),
              ListTile(
                title: Text("230,250,215,250,200,250,185,250,160"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          230,
                          250,
                          215,
                          250,
                          200,
                          250,
                          185,
                          250,
                          160
                        ]);
                      },
              ),
              ListTile(
                title: Text("500,500,250,500,500,500,250,500,500"),
                leading: Icon(Icons.vibration, color: Colors.orange),
                onTap: !_canVibrate
                    ? null
                    : () {
                        Vibration.vibrate(pattern: [
                          0,
                          500,
                          500,
                          250,
                          500,
                          500,
                          500,
                          250,
                          500,
                          500
                        ]);
                      },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// RaisedButton(
//                     child: Text('Vibrate for default 500ms'),
//                     onPressed: () {
//                       Vibration.vibrate();
//                     },
//                   ),
//                   RaisedButton(
//                     child: Text('Vibrate for 1000ms'),
//                     onPressed: () {
//                       Vibration.vibrate(duration: 1000);
//                     },
//                   ),
//                   RaisedButton(
//                     child: Text('Vibrate with pattern'),
//                     onPressed: () {
//                       final snackBar = SnackBar(
//                         content: Text(
//                             'Pattern: wait 0.5s, vibrate 1s, wait 0.5s, vibrate 2s, wait 0.5s, vibrate 3s, wait 0.5s, vibrate 0.5s'),
//                       );

//                       Scaffold.of(context).showSnackBar(snackBar);
//                       Vibration.vibrate(
//                           pattern: [500, 1000, 500, 2000, 500, 3000, 500, 500]);
//                     },
//                   )
