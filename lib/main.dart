import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:headstart_flutter/screens/mobile_number.dart';
import "dart:math" as Math;

// import 'package:headstart_flutter/screens/otp_peage.dart';
import 'package:headstart_flutter/screens/signup-screen.dart';

import 'constants/routes.dart';
import 'firebase_options.dart';

const images = {
  "image1": "images/logo.png",
  "image2": "images/flutter-banner.png",
  "image3": "images/flutter-2.jpg",
};

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
      // home: SignUpScreen(),
      routes: allRoutes,
    );
  }
}





// class MyHomePage extends StatelessWidget {
//   const MyHomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // our code goes here
//     return Scaffold(
//       //top to bottom(vertical axis) -> mainAxis
//       //l horizontal axis => cross Axis of column
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           // textDirection: TextDirection.rtl,
//           // mainAxisAlignment: MainAxisAlignment.spaceAround,
//           mainAxisSize: MainAxisSize.min,
//           children: <Widget>[
//             Container(
//               height: 120,
//               width: 300,
//               color: Colors.green,
//               child: Text("Hello"),
//             ),
//             Container(
//               height: 120,
//               width: 300,
//               color: Colors.green,
//               child: Text("Hello"),
//             ),

//             Container(
//               height: 120,
//               width: 300,
//               color: Colors.green,
//               child: Text("Hello"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
