import 'package:flutter/material.dart';
import "dart:math" as Math;

const images = {
  "image1": "images/logo.png",
  "image2": "images/flutter-banner.png",
  "image3": "images/flutter-2.jpg",
};

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // our code goes here
    return Scaffold(
      //top to bottom(vertical axis) -> mainAxis
      //l horizontal axis => cross Axis of column
      body: Stack(
        // fit: StackFit.passthrough
        clipBehavior: Clip.none,
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Container(
            height: 120,
            width: 200,
            color: Colors.yellow,
            child: Text("World"),
          ),
          Positioned(
            top: 20,
            right: 0,
            child: Container(
              height: 50,
              width: 150,
              color: Colors.red,
              child: Text("Hello"),
            ),
          ),

          Positioned(
            bottom: 20,
            right: 0,
            child: Container(
              height: 20,
              width: 350,
              color: Colors.green,
              child: Text("Hello"),
            ),
          ),
        ],
      ),
    );
  }
}
