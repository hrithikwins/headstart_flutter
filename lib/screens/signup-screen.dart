import 'package:flutter/material.dart';
import 'package:headstart_flutter/constants/colors.dart';
import 'package:headstart_flutter/screens/home-scren.dart';
import 'package:headstart_flutter/utils/media-utils.dart';

import '../widgets/custom-button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: AppColors.primaryRed,
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveSize.width(26, context),
          vertical: ResponsiveSize.height(62, context),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              signUpTitle(),
              // TextFormField(),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    reusableTextField("Full Name"),
                    reusableTextField("Date of Birth"),
                    ageField("Age"),
                    dropdownField("Prevailing Health Conditions"),
                    dropdownField("Blood Group"),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          //beffore validation sending to homepage ..fr demo
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );


                          // Validate returns true if the form is valid, or false otherwise.
                          if (_formKey.currentState!.validate()) {
                            // If the form is valid, display a snackbar. In the real world,
                            // you'd often call a server or save the information in a database.
                            // ScaffoldMessenger.of(context).showSnackBar(
                            //   const SnackBar(content: Text('Processing Data')),
                            // );

                            print("Form is valid");
                            // Navigator.push(context, route)
                            // _formKey.currentState!.reset();
                          } else {
                            print("Form is invalid");
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          padding:
                              MaterialStateProperty.all<EdgeInsetsGeometry>(
                            EdgeInsets.symmetric(horizontal: 37, vertical: 24),
                          ),
                        ),
                        child: Text(
                          "Register for Checkup",
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primaryRed,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding reusableTextField(String label) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (value) {
              print(value);
            },
          ),
        ],
      ),
    );
  }

  Padding ageField(String label) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
            onSaved: (value) {
              print(value);
            },
          ),
        ],
      ),
    );
  }

  Padding dropdownField(String label) {
    return Padding(
      padding: const EdgeInsets.only(top: 28.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            width: 500,
            child: DropdownMenu(
              // value: "Item 1",
              dropdownMenuEntries: [
                DropdownMenuEntry(value: "None", label: "None"),
                DropdownMenuEntry(value: "High BP", label: "High BP"),
                DropdownMenuEntry(value: "Low BP", label: "Low BP"),
                DropdownMenuEntry(value: "Diabetes", label: "Diabetes"),
              ],
              // items: [
              //   DropdownMenuItem(
              //     child: Text("Item 1"),
              //     value: "Item 1",
              //   ),
              //   DropdownMenuItem(
              //     child: Text("Item 2"),
              //     value: "Item 1",
              //   ),
              //   DropdownMenuItem(
              //     child: Text("Item 3"),
              //     value: "Item 1",
              //   ),
              // ],
            ),
          ),
        ],
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
