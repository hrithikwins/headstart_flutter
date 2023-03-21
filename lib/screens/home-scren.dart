import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/media-utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  String name = "";

  initState() {
    super.initState();
    readDataFromSharedPref();
  }

  void readDataFromSharedPref() async {
    final SharedPreferences prefs = await _prefs;
    setState(() {
      name = prefs.getString("name").toString();
    });
    print(prefs.getString('name')! + " || reading from shared preferences");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: ResponsiveSize.height(250 * 2, context),
            child: Stack(
              children: [
                Container(
                  height: ResponsiveSize.height(250, context),
                  color: Colors.red,
                ),
                Positioned(
                  top: ResponsiveSize.height(83, context),
                  left: 0,
                  right: 0,
                  child: Text(
                    "Hello $name",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Positioned(
                  top: ResponsiveSize.height(137, context),
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        color: Colors.white,
                        height: ResponsiveSize.height(236, context),
                        width: ResponsiveSize.width(148, context),
                        child: Text(
                          "Hello Shreyash",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Card(
                        child: SizedBox(
                          height: ResponsiveSize.height(236, context),
                          width: ResponsiveSize.width(148, context),
                          child: Text(
                            "Hello Shreyash",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Center(
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Text("Home Screen")),
          ),
        ],
      ),
    );
  }
}
