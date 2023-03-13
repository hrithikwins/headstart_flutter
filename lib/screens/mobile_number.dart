import 'package:flutter/material.dart';
import "dart:math" as Math;

import 'package:headstart_flutter/constants/colors.dart';

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
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //this column at bttom contains the label and the field
              Column(
                children: [
                  Text("Enter your mobile number here"),
                  Container(
                    margin: EdgeInsets.only(
                      top: 15,
                      bottom: 67,
                    ),
                    height: 53,
                    width: 265,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Color(0xff2c2c2c),
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
              //
              Container(
                width: 265,
                height: 53,
                decoration: BoxDecoration(
                  color: AppColors.dullRed,
                  borderRadius: BorderRadius.circular(
                    4,
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  "GET OTP",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
              // ElevatedButton(onPressed: () => null, child: Text("LOGIN"))
            ],
          ),
        ),
      ),
    );
  }
}
