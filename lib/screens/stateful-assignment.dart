import 'package:flutter/material.dart';

class StatefulAssignment extends StatefulWidget {
  const StatefulAssignment({super.key});

  @override
  State<StatefulAssignment> createState() => _StatefulAssignmentState();
}

class _StatefulAssignmentState extends State<StatefulAssignment> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    // our code goes here
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            counter++;
            print("updated $counter");
          });
        },
        icon: Icon(Icons.add),
        label: Text("Increment"),
      ),
      body: Center(
        // your code starts from here
        child: Container(
          child: Text(
            "$counter",
            style: TextStyle(
              fontSize: 32,
            ),
          ),
        ),
      ),
    );
  }
}


//1. create a counter which shows red colored text when the number is negative, shows yellow when it's 0
//and shows green when it's positive
// and should be range of -5 to 5