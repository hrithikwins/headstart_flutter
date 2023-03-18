import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../constants/colors.dart';
import '../utils/media-utils.dart';
import '../widgets/custom-button.dart';

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
            ResponsiveSize.sizedHeight(72, context),
            otpFieldWidget(context),
            ResponsiveSize.sizedHeight(54, context),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Didn’t receive an OTP?",
                  style: TextStyle(
                    fontSize: 15,
                    color: AppColors.greyText,
                  ),
                ),

                InkWell(
                  onTap: () {
                    print("Resend OTP");
                  },
                  child: Text(
                    " Resend OTP",
                    style: TextStyle(
                      fontSize: 15,
                      color: AppColors.primaryRed,
                    ),
                  ),
                ),
              ],
            ),
            ResponsiveSize.sizedHeight(51, context),
            customButton("VERIFY OTP", () {
              print("Get OTP");
            }),

          ],
        ),
      ),
    );
  }

  Container otpFieldWidget(BuildContext context) {
    return Container(
      width: 196,
      child: PinCodeTextField(
        appContext: context,
        length: 4,

        obscureText: false,
        animationType: AnimationType.fade,
        pinTheme: PinTheme(
          shape: PinCodeFieldShape.underline,
          borderRadius: BorderRadius.circular(5),
          fieldHeight: 50,
          fieldWidth: 40,
          activeFillColor: Colors.white,
        ),
        animationDuration: Duration(milliseconds: 300),
        // backgroundColor: Colors.blue.shade50,
        // enableActiveFill: true,
        // errorAnimationController: errorController,
        // controller: textEditingController,
        onCompleted: (v) {
          print("Completed");
        },
        onChanged: (value) {
          print(value);
          // setState(() {
          //   currentText = value;
          // });
        },
        beforeTextPaste: (text) {
          print("Allowing to paste $text");
          //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
          //but you can show anything you want here, like your pop up saying wrong paste format or etc
          return true;
        },
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
