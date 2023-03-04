import 'package:flutter/material.dart';
import "dart:math" as Math;

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
      body: Center(
        // your code starts from here
        child: Container(
          alignment: Alignment.topRight,
          // color: Colors.black,
          height: 600,
          decoration: BoxDecoration(
            border:
                Border.all(width: 2.0, color: Color.fromARGB(255, 215, 0, 0)),
          ),
          // width: 200,
          padding: EdgeInsets.all(20.0),
          // this is the child container -> orange and every children
          child: Container(
            // color: Colors.deepOrange,
            decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(20.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.blue,
                  blurRadius: 20.0,
                  offset: Offset(
                    0,
                    20,
                  ),
                ),
              ],
            ),
            // height: 80,
            // amber container
            child: Container(
              margin: EdgeInsets.all(20.0),
              color: Colors.amber,
              height: 80,
              width: 200,
              padding: EdgeInsets.all(
                28.0,
              ),
              transform: Matrix4.rotationX(
                Math.pi * 20,
              ),
              child: Text(
                "Hello World ",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
