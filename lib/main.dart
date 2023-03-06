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
          // height: 600,
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
                  spreadRadius: 20.0,
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
              height: 600,
              width: 200,
              // padding: EdgeInsets.all(
              //   28.0,
              // ),
              transform: Matrix4.rotationX(
                Math.pi / 4,
              ),
              child: Image.network(
                "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fih1.redbubble.net%2Fimage.1187851051.8476%2Fflat%2C750x%2C075%2Cf-pad%2C750x1000%2Cf8f8f8.jpg&f=1&nofb=1&ipt=2ef09687efba91b6cfe5a6da2a8cddd5e506c06615fd1bbe9c97d6da7eb7f90f&ipo=images",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
