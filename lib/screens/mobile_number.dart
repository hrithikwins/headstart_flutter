import 'package:flutter/material.dart';
import "dart:math" as Math;

import 'package:headstart_flutter/constants/colors.dart';

import '../widgets/custom-button.dart';

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
              customButton("GET OTP", () {
                print("Get OTP");
              }),
              // ElevatedButton(onPressed: () => null, child: Text("LOGIN"))
            ],
          ),
        ),
      ),
    );
  }
}
