import 'package:flutter/material.dart';
import "dart:math" as Math;

import 'package:headstart_flutter/constants/colors.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

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
