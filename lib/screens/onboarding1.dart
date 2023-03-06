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
        child: Container(
          height: 400,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 300,
              // width: 30,
              child: Image.network(
                "https://s3-alpha-sig.figma.com/img/3e9c/837e/5696c17cab030c3aa1de6a8374e44294?Expires=1679270400&Signature=PFNumXxEHrKlPML9sxZNf-WP2JRbH9YEz801lb1bW4LXngN3i~izC~1zLzUg4wMQsUh5b35oALhrsx1syE3cUHuU1VhJfOMwTDlvOLDWiNm84F17vLf8SvPsQ8cxqGAHNn9jvU~ojyBrH6VbFOiSiJkd9Ka9wRroor13LPSWA0hD-Z8kSFDtI0Ucel5j6~eKK3vM7~gBRXp65QnnC-hSByYKd-SLVDL~nMyfUXv1ozlvyU5U0RYJOmA~Ari2uxsE6ftRvBGHPbyrNmfY2PRYLLUM255lqZHjOQ~XeAwODD11rn2wrRZycPVX77lV9P0NdJvm-M78WggFogQ7bUlDRQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
