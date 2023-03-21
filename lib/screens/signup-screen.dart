import 'package:flutter/material.dart';
import 'package:headstart_flutter/constants/colors.dart';
import 'package:headstart_flutter/screens/home-scren.dart';
import 'package:headstart_flutter/utils/media-utils.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/custom-button.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  //declaring shared preference

  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  void saveFormData() async {
    final SharedPreferences prefs = await _prefs;
    prefs.setString('name', 'Hrithik');
    // Validate returns true if the form is valid, or false otherwise.
    if (_formKey.currentState!.validate()) {
      print("Form is valid");
      _formKey.currentState!.save();
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      print("Form is invalid");
    }
  }

//saving data to shared preferences
  void saveDataToSharedPref(String key, String value) async {
    print("saving to shared preferences");
    final SharedPreferences prefs = await _prefs;
    prefs.setString(key, value);
    print(prefs.getString(key)! + " || reading from shared preferences");
  }

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
                    reusableTextField("Full Name", "name"),
                    reusableTextField("Date of Birth", "dob"),
                    ageField("Age", "age"),
                    dropdownField("Prevailing Health Conditions", "health", [
                      "None",
                      "High BP",
                      "Low BP",
                      "Diabetes",
                      "Heart Disease",
                      "Cancer",
                      "Asthma",
                      "Other"
                    ]),
                    dropdownField("Blood Group", "bloodGroup",
                        ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: saveFormData,
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

  Padding reusableTextField(String label, String fieldKey) {
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
              saveDataToSharedPref(fieldKey, value.toString());
            },
          ),
        ],
      ),
    );
  }

  Padding ageField(String label, String fieldKey) {
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

  Padding dropdownField(String label, String fieldKey, List options) {
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
              dropdownMenuEntries: options
                  .map((data) => DropdownMenuEntry(
                        value: data,
                        label: data,
                      ))
                  .toList(),
              // [
              //   DropdownMenuEntry(value: "None", label: "None"),
              //   DropdownMenuEntry(value: "High BP", label: "High BP"),
              //   DropdownMenuEntry(value: "Low BP", label: "Low BP"),
              //   DropdownMenuEntry(value: "Diabetes", label: "Diabetes"),
              // ],
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
