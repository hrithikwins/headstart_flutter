import 'package:flutter/material.dart';
import "dart:math" as Math;

import 'package:headstart_flutter/constanats/colors.dart';

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
      body: Container(
        color: AppColors.primaryRed,
        width: double.infinity,
        // height: 400,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 239,
                // width: 30,
                child: Image.network(
                  "https://s3-alpha-sig.figma.com/img/8239/6a89/ea18c6d1c976ef9f42a71362488441cb?Expires=1679875200&Signature=j3ddXzs5Y~7gTgh8gvSOhMPHz1i4~dRVA0km86bLiWTyDIeSpn64Qy30vm0hh8RXPuIfsZpx1sBvRJQ-Kn1P9prO9SWKJmReuh9AYKE3XWPChcLuNhzIeZJPmTCjQreb1X4W1tftQ0n-E3bxjgTMr02F~G8NQ3lT82Qw2L8DdfqE51uDJcgt7jrwf9bzMxivDF--qsK1mAQB-~iWUgR3W0~VsxzqGX7TAcnlfzRxQsc9ocir8LYPUyvMYGGJ7SOcs6elneLEUXGgB~9qHpV1MG4fK~llX6O1mZneWNzDphOXU3jbTJy9Nr8imeWWwQ02ljrGCHqNLKgWfugp0Et4Og__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                  // "https://s3-alpha-sig.figma.com/img/3e9c/837e/5696c17cab030c3aa1de6a8374e44294?Expires=1679270400&Signature=PFNumXxEHrKlPML9sxZNf-WP2JRbH9YEz801lb1bW4LXngN3i~izC~1zLzUg4wMQsUh5b35oALhrsx1syE3cUHuU1VhJfOMwTDlvOLDWiNm84F17vLf8SvPsQ8cxqGAHNn9jvU~ojyBrH6VbFOiSiJkd9Ka9wRroor13LPSWA0hD-Z8kSFDtI0Ucel5j6~eKK3vM7~gBRXp65QnnC-hSByYKd-SLVDL~nMyfUXv1ozlvyU5U0RYJOmA~Ari2uxsE6ftRvBGHPbyrNmfY2PRYLLUM255lqZHjOQ~XeAwODD11rn2wrRZycPVX77lV9P0NdJvm-M78WggFogQ7bUlDRQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4",
                ),
              ),
              Container(
                margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.125),
                padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.15,
                ),
                child: Text(
                  "To be a responsible donor, you must get a check-up.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
