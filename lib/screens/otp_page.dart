import 'package:flutter/material.dart';

import '../constants/colors.dart';

class OtpPage extends StatelessWidget {
final String phoneNumber;
  const OtpPage({super.key, this.phoneNumber = "9542983532"});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            pageTitle(phoneNumber),

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

  Widget pageTitle(String phoneNumber) {
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
            "Enter the OTP sent to +91 " + phoneNumber,
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
