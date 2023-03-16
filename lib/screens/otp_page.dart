import 'package:flutter/material.dart';

import '../constants/colors.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            pageTitle(),
            Container(
              child: Text(
                "Hello World",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget pageTitle() {
    return Column(
      children: [
        Container(
          child: Text(
            "OTP Verification",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        Container(
          child: Text(
            "Enter the OTP sent to +91 9542983532",
            style: TextStyle(
              fontSize: 15,
              color: AppColors.greyText,
            ),
          ),
        ),
      ],
    );
  }
}
