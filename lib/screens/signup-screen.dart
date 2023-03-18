import 'package:flutter/material.dart';
import 'package:headstart_flutter/constants/colors.dart';
import 'package:headstart_flutter/utils/media-utils.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryRed,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveSize.width(26, context),
          vertical: ResponsiveSize.height(62, context),
        ),
        child: Column(
          children: [
            signUpTitle(),
            // TextFormField(),
          ],
        ),
      ),
    );
  }

  Container signUpTitle() {
    return Container(
      child: Text(
        "Sign Up",
        style: TextStyle(
          fontSize: 32,
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
